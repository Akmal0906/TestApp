import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'user_info.freezed.dart';
part 'user_info.g.dart';

@freezed
class UserInfo with _$UserInfo {
  @HiveType(typeId: 0)
  const factory UserInfo({
    int? id,
    String? first_name,
    String? last_name,
    String? gender,
    Avatar? avatar,
    String? phone,
    String? email,
    String? auth_method,
    String? birth_date,
    DateTime? date_joined,
    Address? address,
    String? status,
    String? language,
    bool? is_synchronized,
    DateTime? attendance,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);
}

@freezed
class Avatar with _$Avatar {
  const factory Avatar({
    int? id,
    String? url,
  }) = _Avatar;

  factory Avatar.fromJson(Map<String, dynamic> json) => _$AvatarFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    int? id,
    String? address_line,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
