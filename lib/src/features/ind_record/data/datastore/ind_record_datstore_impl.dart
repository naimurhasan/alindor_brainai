import 'dart:convert';
import 'dart:io';

import 'package:alindor_brainai/src/core/network/http_client.dart';
import 'package:alindor_brainai/src/core/utils/constants.dart';
import 'package:alindor_brainai/src/core/utils/environment.dart';
import 'package:alindor_brainai/src/core/utils/logger.dart';
import 'package:alindor_brainai/src/features/ind_record/data/model/text_analyzed_result/text_analyzed_result.dart';
import 'package:alindor_brainai/src/features/ind_record/domain/ind_record_datastore.dart';
import 'package:dio/dio.dart' as dio;

class IndRecordDataStoreImpl implements IndRecordDataStore {
  final BaseHttpClient httpClient;

  IndRecordDataStoreImpl(this.httpClient);

  @override
  Future<String> speechToText(String filePath) async {
    httpClient.client.options.headers['Authorization'] =
        'Token ${AppEnv.deepGramApiKey}';
    httpClient.client.options.headers['Content-Type'] = 'audio/wav';

    List<int> bytes = await File(filePath).readAsBytes();

    final response = await httpClient.client.post(
      'https://api.deepgram.com/v1/listen?model=nova-2&smart_format=true',
      data: bytes,
    );

    if (response.statusCode == 200) {
      Logger.log(message: "indapi response ${response.data}");
      return response.data['results']["channels"][0]["alternatives"][0]
          ["transcript"];
    } else {
      Logger.log(message: "indapi error ${response.data}");
      throw Exception("Error in speech to text conversion");
    }
  }

  @override
  Future<TextAnalysisResult> analyzePersonality(String speechText) async {

    httpClient.client.options.headers['Authorization'] =
        'Bearer ${AppEnv.openAiApiKey}';
    httpClient.client.options.headers['content-type'] =
        'application/json';

    final response = await httpClient.client
        .post('https://api.openai.com/v1/chat/completions', data: {
      "model": "gpt-3.5-turbo",
      "messages": [
        {
          "role": "system",
          "content": "You are a helpful review analysis tool."
        },
        {
          "role": "user",
          "content":
              "```${speechText}``` Analyse the sentiment of the reviews above and return a JSON object. Here are some Traits: [Humor, Empathy, Loyalty, Communicapability, Reliability, Intelligence, Self Discipline, Ambitiousness, Courage, Leadership, Optimism, Resillence] and  Must include: Reflecting_Quotes: Favourite Topics and People, Personal Profile, Less Favourite Topics and People. personality_test should never be null."
        }
      ],
      "functions": [
        {
          "name": "analyze_users_speech",
          "parameters": {
            "type": "object",
            "properties": {
              "personality_test": {
                "type": "number",
                "description": "Score between 0-10 of the person who spoke",
                "default": 3
              },
              "tiny_title": {
                "type": "string",
                "description": "talks about what",
                "max_token": 80
              },
              "full_summary": {
                "type": "string",
                "description": "a summary of what user talks about",
                "max_token": 250
              },
              "traits": {
                "type": "array",
                "items": {
                  "type": "object",
                  "properties": {
                    "name": {"type": "string", "description": "name of trait"},
                    "score": {
                      "type": "number",
                      "description": "score of trait 1-10"
                    }
                  }
                },
                "minItems": 8,
                "maxItems": 12
              },
              "reflecting_quotes": {
                "type": "array",
                "items": {
                  "type": "object",
                  "properties": {
                    "topic": {
                      "type": "string",
                      "description": "topic of quote"
                    },
                    "quote": {
                      "type": "string",
                      "description": "words about the quote topic"
                    }
                  }
                },
                "minItems": 2,
                "maxItems": 5
              }
            }
          }
        }
      ]
    });

    if (response.statusCode == 200) {
      Logger.log(message: "indapi response ${response.data}");
      final rawArgument = response.data['choices'][0]['message']['function_call']['arguments'];
      return TextAnalysisResult.fromJson(json.decode(rawArgument));
    } else {
      Logger.log(message: "indapi error ${response.data}");
      throw Exception("Error in speech to text conversion");
    }
  }
}
