import 'dart:io';

import 'package:alindor_brainai/src/core/network/http_client.dart';
import 'package:alindor_brainai/src/core/utils/constants.dart';
import 'package:alindor_brainai/src/core/utils/logger.dart';
import 'package:alindor_brainai/src/features/ind_record/domain/ind_record_datastore.dart';
import 'package:dio/dio.dart' as dio;

class IndRecordDataStoreImpl implements IndRecordDataStore {
  final BaseHttpClient httpClient;

  IndRecordDataStoreImpl(this.httpClient);

  @override
  Future<String> speechToText(String filePath) async {
    httpClient.client.options.headers['Authorization'] =
        'Token ${AppConstants.deepGramApiKey}';
    httpClient.client.options.headers['Content-Type'] = 'audio/wav';

    List<int> bytes = await File(filePath).readAsBytes();
  
    final response = await httpClient.client.post(
      'https://api.deepgram.com/v1/listen?model=nova-2&smart_format=true',
      data: bytes,
    );

    if (response.statusCode == 200) {
      Logger.log(message: "indapi response ${response.data}");
      return response.data['results']["channels"][0]["alternatives"][0]["transcript"];
    }else{
      Logger.log(message: "indapi error ${response.data}");
      throw Exception("Error in speech to text conversion");
    }
  }
}
