// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_analyzed_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TextAnalysisResult _$TextAnalysisResultFromJson(Map<String, dynamic> json) {
  return _TextAnalysisResult.fromJson(json);
}

/// @nodoc
mixin _$TextAnalysisResult {
  String get tinyTitle => throw _privateConstructorUsedError;
  double get personalityTest => throw _privateConstructorUsedError;
  String get fullSummary => throw _privateConstructorUsedError;
  List<Trait> get traits => throw _privateConstructorUsedError;
  List<ReflectingQuote> get reflectingQuotes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextAnalysisResultCopyWith<TextAnalysisResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextAnalysisResultCopyWith<$Res> {
  factory $TextAnalysisResultCopyWith(
          TextAnalysisResult value, $Res Function(TextAnalysisResult) then) =
      _$TextAnalysisResultCopyWithImpl<$Res, TextAnalysisResult>;
  @useResult
  $Res call(
      {String tinyTitle,
      double personalityTest,
      String fullSummary,
      List<Trait> traits,
      List<ReflectingQuote> reflectingQuotes});
}

/// @nodoc
class _$TextAnalysisResultCopyWithImpl<$Res, $Val extends TextAnalysisResult>
    implements $TextAnalysisResultCopyWith<$Res> {
  _$TextAnalysisResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tinyTitle = null,
    Object? personalityTest = null,
    Object? fullSummary = null,
    Object? traits = null,
    Object? reflectingQuotes = null,
  }) {
    return _then(_value.copyWith(
      tinyTitle: null == tinyTitle
          ? _value.tinyTitle
          : tinyTitle // ignore: cast_nullable_to_non_nullable
              as String,
      personalityTest: null == personalityTest
          ? _value.personalityTest
          : personalityTest // ignore: cast_nullable_to_non_nullable
              as double,
      fullSummary: null == fullSummary
          ? _value.fullSummary
          : fullSummary // ignore: cast_nullable_to_non_nullable
              as String,
      traits: null == traits
          ? _value.traits
          : traits // ignore: cast_nullable_to_non_nullable
              as List<Trait>,
      reflectingQuotes: null == reflectingQuotes
          ? _value.reflectingQuotes
          : reflectingQuotes // ignore: cast_nullable_to_non_nullable
              as List<ReflectingQuote>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextAnalysisResultImplCopyWith<$Res>
    implements $TextAnalysisResultCopyWith<$Res> {
  factory _$$TextAnalysisResultImplCopyWith(_$TextAnalysisResultImpl value,
          $Res Function(_$TextAnalysisResultImpl) then) =
      __$$TextAnalysisResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tinyTitle,
      double personalityTest,
      String fullSummary,
      List<Trait> traits,
      List<ReflectingQuote> reflectingQuotes});
}

/// @nodoc
class __$$TextAnalysisResultImplCopyWithImpl<$Res>
    extends _$TextAnalysisResultCopyWithImpl<$Res, _$TextAnalysisResultImpl>
    implements _$$TextAnalysisResultImplCopyWith<$Res> {
  __$$TextAnalysisResultImplCopyWithImpl(_$TextAnalysisResultImpl _value,
      $Res Function(_$TextAnalysisResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tinyTitle = null,
    Object? personalityTest = null,
    Object? fullSummary = null,
    Object? traits = null,
    Object? reflectingQuotes = null,
  }) {
    return _then(_$TextAnalysisResultImpl(
      tinyTitle: null == tinyTitle
          ? _value.tinyTitle
          : tinyTitle // ignore: cast_nullable_to_non_nullable
              as String,
      personalityTest: null == personalityTest
          ? _value.personalityTest
          : personalityTest // ignore: cast_nullable_to_non_nullable
              as double,
      fullSummary: null == fullSummary
          ? _value.fullSummary
          : fullSummary // ignore: cast_nullable_to_non_nullable
              as String,
      traits: null == traits
          ? _value._traits
          : traits // ignore: cast_nullable_to_non_nullable
              as List<Trait>,
      reflectingQuotes: null == reflectingQuotes
          ? _value._reflectingQuotes
          : reflectingQuotes // ignore: cast_nullable_to_non_nullable
              as List<ReflectingQuote>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextAnalysisResultImpl implements _TextAnalysisResult {
  _$TextAnalysisResultImpl(
      {required this.tinyTitle,
      required this.personalityTest,
      required this.fullSummary,
      required final List<Trait> traits,
      required final List<ReflectingQuote> reflectingQuotes})
      : _traits = traits,
        _reflectingQuotes = reflectingQuotes;

  factory _$TextAnalysisResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextAnalysisResultImplFromJson(json);

  @override
  final String tinyTitle;
  @override
  final double personalityTest;
  @override
  final String fullSummary;
  final List<Trait> _traits;
  @override
  List<Trait> get traits {
    if (_traits is EqualUnmodifiableListView) return _traits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_traits);
  }

  final List<ReflectingQuote> _reflectingQuotes;
  @override
  List<ReflectingQuote> get reflectingQuotes {
    if (_reflectingQuotes is EqualUnmodifiableListView)
      return _reflectingQuotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reflectingQuotes);
  }

  @override
  String toString() {
    return 'TextAnalysisResult(tinyTitle: $tinyTitle, personalityTest: $personalityTest, fullSummary: $fullSummary, traits: $traits, reflectingQuotes: $reflectingQuotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextAnalysisResultImpl &&
            (identical(other.tinyTitle, tinyTitle) ||
                other.tinyTitle == tinyTitle) &&
            (identical(other.personalityTest, personalityTest) ||
                other.personalityTest == personalityTest) &&
            (identical(other.fullSummary, fullSummary) ||
                other.fullSummary == fullSummary) &&
            const DeepCollectionEquality().equals(other._traits, _traits) &&
            const DeepCollectionEquality()
                .equals(other._reflectingQuotes, _reflectingQuotes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      tinyTitle,
      personalityTest,
      fullSummary,
      const DeepCollectionEquality().hash(_traits),
      const DeepCollectionEquality().hash(_reflectingQuotes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextAnalysisResultImplCopyWith<_$TextAnalysisResultImpl> get copyWith =>
      __$$TextAnalysisResultImplCopyWithImpl<_$TextAnalysisResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextAnalysisResultImplToJson(
      this,
    );
  }
}

abstract class _TextAnalysisResult implements TextAnalysisResult {
  factory _TextAnalysisResult(
          {required final String tinyTitle,
          required final double personalityTest,
          required final String fullSummary,
          required final List<Trait> traits,
          required final List<ReflectingQuote> reflectingQuotes}) =
      _$TextAnalysisResultImpl;

  factory _TextAnalysisResult.fromJson(Map<String, dynamic> json) =
      _$TextAnalysisResultImpl.fromJson;

  @override
  String get tinyTitle;
  @override
  double get personalityTest;
  @override
  String get fullSummary;
  @override
  List<Trait> get traits;
  @override
  List<ReflectingQuote> get reflectingQuotes;
  @override
  @JsonKey(ignore: true)
  _$$TextAnalysisResultImplCopyWith<_$TextAnalysisResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
