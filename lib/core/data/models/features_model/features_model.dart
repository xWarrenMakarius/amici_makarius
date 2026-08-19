import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/features_entity.dart';
import '../../../resources/keys.dart';

part 'features_model.freezed.dart';
part 'features_model.g.dart';

@freezed
abstract class FeaturesModel with _$FeaturesModel {
  const factory FeaturesModel({
    @JsonKey(name: Keys.specialFinalCoaching, defaultValue: false) required bool specialFinalCoaching,
  }) = _FeaturesModel;

  factory FeaturesModel.fromJson(Map<String, dynamic> json) => _$FeaturesModelFromJson(json);
}

extension FeaturesModelX on FeaturesModel {
  FeaturesEntity toEntity() => FeaturesEntity(
    specialFinalCoaching: specialFinalCoaching,
  );
}