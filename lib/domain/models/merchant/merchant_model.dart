import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchant_model.freezed.dart';

part 'merchant_model.g.dart';

@freezed
class MerchantModel with _$MerchantModel {
  const factory MerchantModel({
    int? id,
    String? merchant_name,
    bool? is_active,
  }) = _MerchantModel;

  factory MerchantModel.fromJson(Map<String, dynamic> json) =>
      _$MerchantModelFromJson(json);
}

List<MerchantModel> merchantListFromJson(dynamic json) =>
    List<MerchantModel>.from(json.map((x) => MerchantModel.fromJson(x)));
