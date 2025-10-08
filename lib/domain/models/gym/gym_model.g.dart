// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gym_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GymModelImpl _$$GymModelImplFromJson(Map<String, dynamic> json) =>
    _$GymModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      is_active: json['is_active'] as bool?,
    );

Map<String, dynamic> _$$GymModelImplToJson(_$GymModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'is_active': instance.is_active,
    };
