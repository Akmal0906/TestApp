import 'package:freezed_annotation/freezed_annotation.dart';

part 'membership.freezed.dart';
part 'membership.g.dart';

@freezed
class Membership with _$Membership {
  const factory Membership({
    int? id,
    int? type,
    String? payment_date,
    Package? package,
    @JsonKey(name: 'class')
    ClassInfo? membershipClass, // Maps 'class' JSON key to 'membershipClass'
    String? status,
  }) = _Membership;

  factory Membership.fromJson(Map<String, dynamic> json) =>
      _$MembershipFromJson(json);
}

@freezed
class ClassInfo with _$ClassInfo {
  const factory ClassInfo({
    int? id,
    String? name,
    int? price,
    int? subtotal,
    int? discount,
    String? trainer,
    int? slot,
    int? visit,
  }) = _ClassInfo;

  factory ClassInfo.fromJson(Map<String, dynamic> json) =>
      _$ClassInfoFromJson(json);
}

@freezed
class Package with _$Package {
  const factory Package({
    int? id,
    String? name,
    int? price,
    int? subtotal,
    int? discount,
    int? remaining_days,
    String? remaining_days_info,
    String? start_date,
    PackageTrainer? package_trainer,
    String? start_time,
    String? end_time,
  }) = _Package;

  factory Package.fromJson(Map<String, dynamic> json) =>
      _$PackageFromJson(json);
}

@freezed
class PackageTrainer with _$PackageTrainer {
  const factory PackageTrainer({
    String? trainer,
    String? room,
  }) = _PackageTrainer;

  factory PackageTrainer.fromJson(Map<String, dynamic> json) =>
      _$PackageTrainerFromJson(json);
}

// Helper function to parse a list of Membership objects from JSON
List<Membership> membershipListFromJson(dynamic json) =>
    List<Membership>.from(json.map((x) => Membership.fromJson(x)));
