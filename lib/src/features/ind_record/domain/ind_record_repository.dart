import 'package:alindor_brainai/src/features/ind_record/data/model/text_analyzed_result/text_analyzed_result.dart';

abstract class IndRecordRepository {
  Future<String> speechToText(String filePath);
  Future<TextAnalysisResult> analyzePersonality(String speechText);
}