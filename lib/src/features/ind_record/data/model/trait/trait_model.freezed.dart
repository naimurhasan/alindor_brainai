// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trait_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Trait _$TraitFromJson(Map<String, dynamic> json) {
  return _Trait.fromJson(json);
}

/// @nodoc
mixin _$Trait {
  String get name => throw _privateConstructorUsedError;
  double get percentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TraitCopyWith<Trait> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TraitCopyWith<$Res> {
  factory $TraitCopyWith(Trait value, $Res Function(Trait) then) =
      _$TraitCopyWithImpl<$Res, Trait>;
  @useResult
  $Res call({String name, double percentage});
}

/// @nodoc
class _$TraitCopyWithImpl<$Res, $Val extends Trait>
    implements $TraitCopyWith<$Res> {
  _$TraitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? percentage = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TraitImplCopyWith<$Res> implements $TraitCopyWith<$Res> {
  factory _$$TraitImplCopyWith(
          _$TraitImpl value, $Res Function(_$TraitImpl) then) =
      __$$TraitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double percentage});
}

/// @nodoc
class __$$TraitImplCopyWithImpl<$Res>
    extends _$TraitCopyWithImpl<$Res, _$TraitImpl>
    implements _$$TraitImplCopyWith<$Res> {
  __$$TraitImplCopyWithImpl(
      _$TraitImpl _value, $Res Function(_$TraitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? percentage = null,
  }) {
    return _then(_$TraitImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TraitImpl implements _Trait {
  _$TraitImpl({required this.name, required this.percentage});

  factory _$TraitImpl.fromJson(Map<String, dynamic> json) =>
      _$$TraitImplFromJson(json);

  @override
  final String name;
  @override
  final double percentage;

  @override
  String toString() {
    return 'Trait(name: $name, percentage: $percentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TraitImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, percentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TraitImplCopyWith<_$TraitImpl> get copyWith =>
      __$$TraitImplCopyWithImpl<_$TraitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TraitImplToJson(
      this,
    );
  }
}

abstract class _Trait implements Trait {
  factory _Trait(
      {required final String name,
      required final double percentage}) = _$TraitImpl;

  factory _Trait.fromJson(Map<String, dynamic> json) = _$TraitImpl.fromJson;

  @override
  String get name;
  @override
  double get percentage;
  @override
  @JsonKey(ignore: true)
  _$$TraitImplCopyWith<_$TraitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
