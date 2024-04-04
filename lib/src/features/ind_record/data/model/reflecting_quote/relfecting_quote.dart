import 'package:freezed_annotation/freezed_annotation.dart';

part 'relfecting_quote.freezed.dart';
part 'relfecting_quote.g.dart';

@freezed
class ReflectingQuote with _$ReflectingQuote {

  factory ReflectingQuote({
    required String topic,
    required String quote,
  }) = _ReflectingQuote;

  factory ReflectingQuote.fromJson(Map<String, dynamic> json) => _$ReflectingQuoteFromJson(json);
}