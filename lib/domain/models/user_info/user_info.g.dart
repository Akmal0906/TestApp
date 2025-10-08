// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserInfoImplAdapter extends TypeAdapter<_$UserInfoImpl> {
  @override
  final int typeId = 0;

  @override
  _$UserInfoImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$UserInfoImpl();
  }

  @override
  void write(BinaryWriter writer, _$UserInfoImpl obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserInfoImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoImpl _$$UserInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoImpl(
      id: (json['id'] as num?)?.toInt(),
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      gender: json['gender'] as String?,
      avatar: json['avatar'] == null
          ? null
          : Avatar.fromJson(json['avatar'] as Map<String, dynamic>),
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      auth_method: json['auth_method'] as String?,
      birth_date: json['birth_date'] as String?,
      date_joined: json['date_joined'] == null
          ? null
          : DateTime.parse(json['date_joined'] as String),
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      status: json['status'] as String?,
      language: json['language'] as String?,
      is_synchronized: json['is_synchronized'] as bool?,
      attendance: json['attendance'] == null
          ? null
          : DateTime.parse(json['attendance'] as String),
    );

Map<String, dynamic> _$$UserInfoImplToJson(_$UserInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'gender': instance.gender,
      'avatar': instance.avatar,
      'phone': instance.phone,
      'email': instance.email,
      'auth_method': instance.auth_method,
      'birth_date': instance.birth_date,
      'date_joined': instance.date_joined?.toIso8601String(),
      'address': instance.address,
      'status': instance.status,
      'language': instance.language,
      'is_synchronized': instance.is_synchronized,
      'attendance': instance.attendance?.toIso8601String(),
    };

_$AvatarImpl _$$AvatarImplFromJson(Map<String, dynamic> json) => _$AvatarImpl(
      id: (json['id'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$AvatarImplToJson(_$AvatarImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      id: (json['id'] as num?)?.toInt(),
      address_line: json['address_line'] as String?,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address_line': instance.address_line,
    };
