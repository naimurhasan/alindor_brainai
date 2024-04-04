// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_analyzed_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextAnalysisResultImpl _$$TextAnalysisResultImplFromJson(
        Map<String, dynamic> json) =>
    _$TextAnalysisResultImpl(
      tinyTitle: json['tinyTitle'] as String,
      personalityTest: (json['personalityTest'] as num).toDouble(),
      fullSummary: json['fullSummary'] as String,
      traits: (json['traits'] as List<dynamic>)
          .map((e) => Trait.fromJson(e as Map<String, dynamic>))
          .toList(),
      reflectingQuotes: (json['reflectingQuotes'] as List<dynamic>)
          .map((e) => ReflectingQuote.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TextAnalysisResultImplToJson(
        _$TextAnalysisResultImpl instance) =>
    <String, dynamic>{
      'tinyTitle': instance.tinyTitle,
      'personalityTest': instance.personalityTest,
      'fullSummary': instance.fullSummary,
      'traits': instance.traits,
      'reflectingQuotes': instance.reflectingQuotes,
    };
