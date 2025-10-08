// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MerchantModelImpl _$$MerchantModelImplFromJson(Map<String, dynamic> json) =>
    _$MerchantModelImpl(
      id: (json['id'] as num?)?.toInt(),
      merchant_name: json['merchant_name'] as String?,
      is_active: json['is_active'] as bool?,
    );

Map<String, dynamic> _$$MerchantModelImplToJson(_$MerchantModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'merchant_name': instance.merchant_name,
      'is_active': instance.is_active,
    };
