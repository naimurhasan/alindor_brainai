import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppEnv{
  static String deepGramApiKey =  dotenv.get('DEEP_GRAM_API_KEY');
  static String openAiApiKey =  dotenv.get('OPEN_AI_API_KEY');
}