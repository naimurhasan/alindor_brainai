import 'package:alindor_brainai/src/features/ind_record/data/model/reflecting_quote/relfecting_quote.dart';
import 'package:alindor_brainai/src/features/ind_record/data/model/trait/trait_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_analyzed_result.freezed.dart';
part 'text_analyzed_result.g.dart';

@freezed
abstract class TextAnalysisResult with _$TextAnalysisResult {

  const factory TextAnalysisResult({
    @JsonKey(name: 'tiny_title', defaultValue: "Sentiment Analysis") required String tinyTitle,
    @JsonKey(name: 'personality_test', defaultValue: 1)  required double personalityTest,    
    @JsonKey(name: 'full_summary', defaultValue: "")required String fullSummary,
    required List<Trait> traits,
    @JsonKey(name: 'reflecting_quotes') required List<ReflectingQuote> reflectingQuotes,
  }) = _TextAnalysisResult;

  factory TextAnalysisResult.fromJson(Map<String, dynamic> json) => _$TextAnalysisResultFromJson(json);
}
