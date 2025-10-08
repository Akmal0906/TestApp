import 'package:freezed_annotation/freezed_annotation.dart';

part 'gym_model.freezed.dart';

part 'gym_model.g.dart';

@freezed
class GymModel with _$GymModel {
  const factory GymModel({
    int? id,
    String? name,
    bool? is_active,
  }) = _GymModel;

  factory GymModel.fromJson(Map<String, dynamic> json) =>
      _$GymModelFromJson(json);
}

List<GymModel> gymListFromJson(dynamic json) =>
    List<GymModel>.from(json.map((x) => GymModel.fromJson(x)));
