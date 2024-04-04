import 'package:freezed_annotation/freezed_annotation.dart';

part 'trait_model.freezed.dart';
part 'trait_model.g.dart';

@freezed
class Trait with _$Trait {

  factory Trait({
    required String name,
    required double percentage,
  }) = _Trait;

  factory Trait.fromJson(Map<String, dynamic> json) => _$TraitFromJson(json);
}