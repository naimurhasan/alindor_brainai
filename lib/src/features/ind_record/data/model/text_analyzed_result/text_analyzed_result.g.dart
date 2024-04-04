// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_analyzed_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextAnalysisResultImpl _$$TextAnalysisResultImplFromJson(
        Map<String, dynamic> json) =>
    _$TextAnalysisResultImpl(
      tinyTitle: json['tiny_title'] as String,
      personalityTest: (json['personality_test'] as num).toDouble(),
      fullSummary: json['full_summary'] as String,
      traits: (json['traits'] as List<dynamic>)
          .map((e) => Trait.fromJson(e as Map<String, dynamic>))
          .toList(),
      reflectingQuotes: (json['reflecting_quotes'] as List<dynamic>)
          .map((e) => ReflectingQuote.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TextAnalysisResultImplToJson(
        _$TextAnalysisResultImpl instance) =>
    <String, dynamic>{
      'tiny_title': instance.tinyTitle,
      'personality_test': instance.personalityTest,
      'full_summary': instance.fullSummary,
      'traits': instance.traits,
      'reflecting_quotes': instance.reflectingQuotes,
    };
