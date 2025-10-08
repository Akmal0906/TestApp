// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'membership.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MembershipImpl _$$MembershipImplFromJson(Map<String, dynamic> json) =>
    _$MembershipImpl(
      id: (json['id'] as num?)?.toInt(),
      type: (json['type'] as num?)?.toInt(),
      payment_date: json['payment_date'] as String?,
      package: json['package'] == null
          ? null
          : Package.fromJson(json['package'] as Map<String, dynamic>),
      membershipClass: json['class'] == null
          ? null
          : ClassInfo.fromJson(json['class'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$MembershipImplToJson(_$MembershipImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'payment_date': instance.payment_date,
      'package': instance.package,
      'class': instance.membershipClass,
      'status': instance.status,
    };

_$ClassInfoImpl _$$ClassInfoImplFromJson(Map<String, dynamic> json) =>
    _$ClassInfoImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toInt(),
      subtotal: (json['subtotal'] as num?)?.toInt(),
      discount: (json['discount'] as num?)?.toInt(),
      trainer: json['trainer'] as String?,
      slot: (json['slot'] as num?)?.toInt(),
      visit: (json['visit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ClassInfoImplToJson(_$ClassInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'subtotal': instance.subtotal,
      'discount': instance.discount,
      'trainer': instance.trainer,
      'slot': instance.slot,
      'visit': instance.visit,
    };

_$PackageImpl _$$PackageImplFromJson(Map<String, dynamic> json) =>
    _$PackageImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toInt(),
      subtotal: (json['subtotal'] as num?)?.toInt(),
      discount: (json['discount'] as num?)?.toInt(),
      remaining_days: (json['remaining_days'] as num?)?.toInt(),
      remaining_days_info: json['remaining_days_info'] as String?,
      start_date: json['start_date'] as String?,
      package_trainer: json['package_trainer'] == null
          ? null
          : PackageTrainer.fromJson(
              json['package_trainer'] as Map<String, dynamic>),
      start_time: json['start_time'] as String?,
      end_time: json['end_time'] as String?,
    );

Map<String, dynamic> _$$PackageImplToJson(_$PackageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'subtotal': instance.subtotal,
      'discount': instance.discount,
      'remaining_days': instance.remaining_days,
      'remaining_days_info': instance.remaining_days_info,
      'start_date': instance.start_date,
      'package_trainer': instance.package_trainer,
      'start_time': instance.start_time,
      'end_time': instance.end_time,
    };

_$PackageTrainerImpl _$$PackageTrainerImplFromJson(Map<String, dynamic> json) =>
    _$PackageTrainerImpl(
      trainer: json['trainer'] as String?,
      room: json['room'] as String?,
    );

Map<String, dynamic> _$$PackageTrainerImplToJson(
        _$PackageTrainerImpl instance) =>
    <String, dynamic>{
      'trainer': instance.trainer,
      'room': instance.room,
    };
