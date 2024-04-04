import 'package:alindor_brainai/src/features/ind_record/data/model/reflecting_quote/relfecting_quote.dart';
import 'package:alindor_brainai/src/features/ind_record/data/model/trait/trait_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_analyzed_result.freezed.dart';
part 'text_analyzed_result.g.dart';

@freezed
class TextAnalysisResult with _$TextAnalysisResult {

  factory TextAnalysisResult({
    required String tinyTitle,
    required double personalityTest,
    required String fullSummary,
    required List<Trait> traits,
    required List<ReflectingQuote> reflectingQuotes,
  }) = _TextAnalysisResult;

  factory TextAnalysisResult.fromJson(Map<String, dynamic> json) => _$TextAnalysisResultFromJson(json);
}
