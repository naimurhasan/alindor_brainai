// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relfecting_quote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReflectingQuote _$ReflectingQuoteFromJson(Map<String, dynamic> json) {
  return _ReflectingQuote.fromJson(json);
}

/// @nodoc
mixin _$ReflectingQuote {
  String get topic => throw _privateConstructorUsedError;
  String get quote => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReflectingQuoteCopyWith<ReflectingQuote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReflectingQuoteCopyWith<$Res> {
  factory $ReflectingQuoteCopyWith(
          ReflectingQuote value, $Res Function(ReflectingQuote) then) =
      _$ReflectingQuoteCopyWithImpl<$Res, ReflectingQuote>;
  @useResult
  $Res call({String topic, String quote});
}

/// @nodoc
class _$ReflectingQuoteCopyWithImpl<$Res, $Val extends ReflectingQuote>
    implements $ReflectingQuoteCopyWith<$Res> {
  _$ReflectingQuoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? quote = null,
  }) {
    return _then(_value.copyWith(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      quote: null == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReflectingQuoteImplCopyWith<$Res>
    implements $ReflectingQuoteCopyWith<$Res> {
  factory _$$ReflectingQuoteImplCopyWith(_$ReflectingQuoteImpl value,
          $Res Function(_$ReflectingQuoteImpl) then) =
      __$$ReflectingQuoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String topic, String quote});
}

/// @nodoc
class __$$ReflectingQuoteImplCopyWithImpl<$Res>
    extends _$ReflectingQuoteCopyWithImpl<$Res, _$ReflectingQuoteImpl>
    implements _$$ReflectingQuoteImplCopyWith<$Res> {
  __$$ReflectingQuoteImplCopyWithImpl(
      _$ReflectingQuoteImpl _value, $Res Function(_$ReflectingQuoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? quote = null,
  }) {
    return _then(_$ReflectingQuoteImpl(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      quote: null == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReflectingQuoteImpl implements _ReflectingQuote {
  _$ReflectingQuoteImpl({required this.topic, required this.quote});

  factory _$ReflectingQuoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReflectingQuoteImplFromJson(json);

  @override
  final String topic;
  @override
  final String quote;

  @override
  String toString() {
    return 'ReflectingQuote(topic: $topic, quote: $quote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReflectingQuoteImpl &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.quote, quote) || other.quote == quote));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, topic, quote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReflectingQuoteImplCopyWith<_$ReflectingQuoteImpl> get copyWith =>
      __$$ReflectingQuoteImplCopyWithImpl<_$ReflectingQuoteImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReflectingQuoteImplToJson(
      this,
    );
  }
}

abstract class _ReflectingQuote implements ReflectingQuote {
  factory _ReflectingQuote(
      {required final String topic,
      required final String quote}) = _$ReflectingQuoteImpl;

  factory _ReflectingQuote.fromJson(Map<String, dynamic> json) =
      _$ReflectingQuoteImpl.fromJson;

  @override
  String get topic;
  @override
  String get quote;
  @override
  @JsonKey(ignore: true)
  _$$ReflectingQuoteImplCopyWith<_$ReflectingQuoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
