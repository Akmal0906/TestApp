// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'membership.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Membership _$MembershipFromJson(Map<String, dynamic> json) {
  return _Membership.fromJson(json);
}

/// @nodoc
mixin _$Membership {
  int? get id => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;
  String? get payment_date => throw _privateConstructorUsedError;
  Package? get package => throw _privateConstructorUsedError;
  @JsonKey(name: 'class')
  ClassInfo? get membershipClass =>
      throw _privateConstructorUsedError; // Maps 'class' JSON key to 'membershipClass'
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this Membership to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Membership
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MembershipCopyWith<Membership> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembershipCopyWith<$Res> {
  factory $MembershipCopyWith(
          Membership value, $Res Function(Membership) then) =
      _$MembershipCopyWithImpl<$Res, Membership>;
  @useResult
  $Res call(
      {int? id,
      int? type,
      String? payment_date,
      Package? package,
      @JsonKey(name: 'class') ClassInfo? membershipClass,
      String? status});

  $PackageCopyWith<$Res>? get package;
  $ClassInfoCopyWith<$Res>? get membershipClass;
}

/// @nodoc
class _$MembershipCopyWithImpl<$Res, $Val extends Membership>
    implements $MembershipCopyWith<$Res> {
  _$MembershipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Membership
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? payment_date = freezed,
    Object? package = freezed,
    Object? membershipClass = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      payment_date: freezed == payment_date
          ? _value.payment_date
          : payment_date // ignore: cast_nullable_to_non_nullable
              as String?,
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as Package?,
      membershipClass: freezed == membershipClass
          ? _value.membershipClass
          : membershipClass // ignore: cast_nullable_to_non_nullable
              as ClassInfo?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Membership
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackageCopyWith<$Res>? get package {
    if (_value.package == null) {
      return null;
    }

    return $PackageCopyWith<$Res>(_value.package!, (value) {
      return _then(_value.copyWith(package: value) as $Val);
    });
  }

  /// Create a copy of Membership
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassInfoCopyWith<$Res>? get membershipClass {
    if (_value.membershipClass == null) {
      return null;
    }

    return $ClassInfoCopyWith<$Res>(_value.membershipClass!, (value) {
      return _then(_value.copyWith(membershipClass: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MembershipImplCopyWith<$Res>
    implements $MembershipCopyWith<$Res> {
  factory _$$MembershipImplCopyWith(
          _$MembershipImpl value, $Res Function(_$MembershipImpl) then) =
      __$$MembershipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? type,
      String? payment_date,
      Package? package,
      @JsonKey(name: 'class') ClassInfo? membershipClass,
      String? status});

  @override
  $PackageCopyWith<$Res>? get package;
  @override
  $ClassInfoCopyWith<$Res>? get membershipClass;
}

/// @nodoc
class __$$MembershipImplCopyWithImpl<$Res>
    extends _$MembershipCopyWithImpl<$Res, _$MembershipImpl>
    implements _$$MembershipImplCopyWith<$Res> {
  __$$MembershipImplCopyWithImpl(
      _$MembershipImpl _value, $Res Function(_$MembershipImpl) _then)
      : super(_value, _then);

  /// Create a copy of Membership
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? payment_date = freezed,
    Object? package = freezed,
    Object? membershipClass = freezed,
    Object? status = freezed,
  }) {
    return _then(_$MembershipImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      payment_date: freezed == payment_date
          ? _value.payment_date
          : payment_date // ignore: cast_nullable_to_non_nullable
              as String?,
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as Package?,
      membershipClass: freezed == membershipClass
          ? _value.membershipClass
          : membershipClass // ignore: cast_nullable_to_non_nullable
              as ClassInfo?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MembershipImpl implements _Membership {
  const _$MembershipImpl(
      {this.id,
      this.type,
      this.payment_date,
      this.package,
      @JsonKey(name: 'class') this.membershipClass,
      this.status});

  factory _$MembershipImpl.fromJson(Map<String, dynamic> json) =>
      _$$MembershipImplFromJson(json);

  @override
  final int? id;
  @override
  final int? type;
  @override
  final String? payment_date;
  @override
  final Package? package;
  @override
  @JsonKey(name: 'class')
  final ClassInfo? membershipClass;
// Maps 'class' JSON key to 'membershipClass'
  @override
  final String? status;

  @override
  String toString() {
    return 'Membership(id: $id, type: $type, payment_date: $payment_date, package: $package, membershipClass: $membershipClass, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MembershipImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.payment_date, payment_date) ||
                other.payment_date == payment_date) &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.membershipClass, membershipClass) ||
                other.membershipClass == membershipClass) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, type, payment_date, package, membershipClass, status);

  /// Create a copy of Membership
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MembershipImplCopyWith<_$MembershipImpl> get copyWith =>
      __$$MembershipImplCopyWithImpl<_$MembershipImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MembershipImplToJson(
      this,
    );
  }
}

abstract class _Membership implements Membership {
  const factory _Membership(
      {final int? id,
      final int? type,
      final String? payment_date,
      final Package? package,
      @JsonKey(name: 'class') final ClassInfo? membershipClass,
      final String? status}) = _$MembershipImpl;

  factory _Membership.fromJson(Map<String, dynamic> json) =
      _$MembershipImpl.fromJson;

  @override
  int? get id;
  @override
  int? get type;
  @override
  String? get payment_date;
  @override
  Package? get package;
  @override
  @JsonKey(name: 'class')
  ClassInfo? get membershipClass; // Maps 'class' JSON key to 'membershipClass'
  @override
  String? get status;

  /// Create a copy of Membership
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MembershipImplCopyWith<_$MembershipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClassInfo _$ClassInfoFromJson(Map<String, dynamic> json) {
  return _ClassInfo.fromJson(json);
}

/// @nodoc
mixin _$ClassInfo {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get subtotal => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  String? get trainer => throw _privateConstructorUsedError;
  int? get slot => throw _privateConstructorUsedError;
  int? get visit => throw _privateConstructorUsedError;

  /// Serializes this ClassInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassInfoCopyWith<ClassInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassInfoCopyWith<$Res> {
  factory $ClassInfoCopyWith(ClassInfo value, $Res Function(ClassInfo) then) =
      _$ClassInfoCopyWithImpl<$Res, ClassInfo>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? price,
      int? subtotal,
      int? discount,
      String? trainer,
      int? slot,
      int? visit});
}

/// @nodoc
class _$ClassInfoCopyWithImpl<$Res, $Val extends ClassInfo>
    implements $ClassInfoCopyWith<$Res> {
  _$ClassInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? subtotal = freezed,
    Object? discount = freezed,
    Object? trainer = freezed,
    Object? slot = freezed,
    Object? visit = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      subtotal: freezed == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      trainer: freezed == trainer
          ? _value.trainer
          : trainer // ignore: cast_nullable_to_non_nullable
              as String?,
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int?,
      visit: freezed == visit
          ? _value.visit
          : visit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassInfoImplCopyWith<$Res>
    implements $ClassInfoCopyWith<$Res> {
  factory _$$ClassInfoImplCopyWith(
          _$ClassInfoImpl value, $Res Function(_$ClassInfoImpl) then) =
      __$$ClassInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? price,
      int? subtotal,
      int? discount,
      String? trainer,
      int? slot,
      int? visit});
}

/// @nodoc
class __$$ClassInfoImplCopyWithImpl<$Res>
    extends _$ClassInfoCopyWithImpl<$Res, _$ClassInfoImpl>
    implements _$$ClassInfoImplCopyWith<$Res> {
  __$$ClassInfoImplCopyWithImpl(
      _$ClassInfoImpl _value, $Res Function(_$ClassInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? subtotal = freezed,
    Object? discount = freezed,
    Object? trainer = freezed,
    Object? slot = freezed,
    Object? visit = freezed,
  }) {
    return _then(_$ClassInfoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      subtotal: freezed == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      trainer: freezed == trainer
          ? _value.trainer
          : trainer // ignore: cast_nullable_to_non_nullable
              as String?,
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int?,
      visit: freezed == visit
          ? _value.visit
          : visit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassInfoImpl implements _ClassInfo {
  const _$ClassInfoImpl(
      {this.id,
      this.name,
      this.price,
      this.subtotal,
      this.discount,
      this.trainer,
      this.slot,
      this.visit});

  factory _$ClassInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassInfoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? price;
  @override
  final int? subtotal;
  @override
  final int? discount;
  @override
  final String? trainer;
  @override
  final int? slot;
  @override
  final int? visit;

  @override
  String toString() {
    return 'ClassInfo(id: $id, name: $name, price: $price, subtotal: $subtotal, discount: $discount, trainer: $trainer, slot: $slot, visit: $visit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.trainer, trainer) || other.trainer == trainer) &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.visit, visit) || other.visit == visit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, price, subtotal, discount, trainer, slot, visit);

  /// Create a copy of ClassInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassInfoImplCopyWith<_$ClassInfoImpl> get copyWith =>
      __$$ClassInfoImplCopyWithImpl<_$ClassInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassInfoImplToJson(
      this,
    );
  }
}

abstract class _ClassInfo implements ClassInfo {
  const factory _ClassInfo(
      {final int? id,
      final String? name,
      final int? price,
      final int? subtotal,
      final int? discount,
      final String? trainer,
      final int? slot,
      final int? visit}) = _$ClassInfoImpl;

  factory _ClassInfo.fromJson(Map<String, dynamic> json) =
      _$ClassInfoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get price;
  @override
  int? get subtotal;
  @override
  int? get discount;
  @override
  String? get trainer;
  @override
  int? get slot;
  @override
  int? get visit;

  /// Create a copy of ClassInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassInfoImplCopyWith<_$ClassInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Package _$PackageFromJson(Map<String, dynamic> json) {
  return _Package.fromJson(json);
}

/// @nodoc
mixin _$Package {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get subtotal => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  int? get remaining_days => throw _privateConstructorUsedError;
  String? get remaining_days_info => throw _privateConstructorUsedError;
  String? get start_date => throw _privateConstructorUsedError;
  PackageTrainer? get package_trainer => throw _privateConstructorUsedError;
  String? get start_time => throw _privateConstructorUsedError;
  String? get end_time => throw _privateConstructorUsedError;

  /// Serializes this Package to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageCopyWith<Package> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageCopyWith<$Res> {
  factory $PackageCopyWith(Package value, $Res Function(Package) then) =
      _$PackageCopyWithImpl<$Res, Package>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? price,
      int? subtotal,
      int? discount,
      int? remaining_days,
      String? remaining_days_info,
      String? start_date,
      PackageTrainer? package_trainer,
      String? start_time,
      String? end_time});

  $PackageTrainerCopyWith<$Res>? get package_trainer;
}

/// @nodoc
class _$PackageCopyWithImpl<$Res, $Val extends Package>
    implements $PackageCopyWith<$Res> {
  _$PackageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? subtotal = freezed,
    Object? discount = freezed,
    Object? remaining_days = freezed,
    Object? remaining_days_info = freezed,
    Object? start_date = freezed,
    Object? package_trainer = freezed,
    Object? start_time = freezed,
    Object? end_time = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      subtotal: freezed == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      remaining_days: freezed == remaining_days
          ? _value.remaining_days
          : remaining_days // ignore: cast_nullable_to_non_nullable
              as int?,
      remaining_days_info: freezed == remaining_days_info
          ? _value.remaining_days_info
          : remaining_days_info // ignore: cast_nullable_to_non_nullable
              as String?,
      start_date: freezed == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      package_trainer: freezed == package_trainer
          ? _value.package_trainer
          : package_trainer // ignore: cast_nullable_to_non_nullable
              as PackageTrainer?,
      start_time: freezed == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as String?,
      end_time: freezed == end_time
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackageTrainerCopyWith<$Res>? get package_trainer {
    if (_value.package_trainer == null) {
      return null;
    }

    return $PackageTrainerCopyWith<$Res>(_value.package_trainer!, (value) {
      return _then(_value.copyWith(package_trainer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackageImplCopyWith<$Res> implements $PackageCopyWith<$Res> {
  factory _$$PackageImplCopyWith(
          _$PackageImpl value, $Res Function(_$PackageImpl) then) =
      __$$PackageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? price,
      int? subtotal,
      int? discount,
      int? remaining_days,
      String? remaining_days_info,
      String? start_date,
      PackageTrainer? package_trainer,
      String? start_time,
      String? end_time});

  @override
  $PackageTrainerCopyWith<$Res>? get package_trainer;
}

/// @nodoc
class __$$PackageImplCopyWithImpl<$Res>
    extends _$PackageCopyWithImpl<$Res, _$PackageImpl>
    implements _$$PackageImplCopyWith<$Res> {
  __$$PackageImplCopyWithImpl(
      _$PackageImpl _value, $Res Function(_$PackageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? subtotal = freezed,
    Object? discount = freezed,
    Object? remaining_days = freezed,
    Object? remaining_days_info = freezed,
    Object? start_date = freezed,
    Object? package_trainer = freezed,
    Object? start_time = freezed,
    Object? end_time = freezed,
  }) {
    return _then(_$PackageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      subtotal: freezed == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      remaining_days: freezed == remaining_days
          ? _value.remaining_days
          : remaining_days // ignore: cast_nullable_to_non_nullable
              as int?,
      remaining_days_info: freezed == remaining_days_info
          ? _value.remaining_days_info
          : remaining_days_info // ignore: cast_nullable_to_non_nullable
              as String?,
      start_date: freezed == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      package_trainer: freezed == package_trainer
          ? _value.package_trainer
          : package_trainer // ignore: cast_nullable_to_non_nullable
              as PackageTrainer?,
      start_time: freezed == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as String?,
      end_time: freezed == end_time
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageImpl implements _Package {
  const _$PackageImpl(
      {this.id,
      this.name,
      this.price,
      this.subtotal,
      this.discount,
      this.remaining_days,
      this.remaining_days_info,
      this.start_date,
      this.package_trainer,
      this.start_time,
      this.end_time});

  factory _$PackageImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? price;
  @override
  final int? subtotal;
  @override
  final int? discount;
  @override
  final int? remaining_days;
  @override
  final String? remaining_days_info;
  @override
  final String? start_date;
  @override
  final PackageTrainer? package_trainer;
  @override
  final String? start_time;
  @override
  final String? end_time;

  @override
  String toString() {
    return 'Package(id: $id, name: $name, price: $price, subtotal: $subtotal, discount: $discount, remaining_days: $remaining_days, remaining_days_info: $remaining_days_info, start_date: $start_date, package_trainer: $package_trainer, start_time: $start_time, end_time: $end_time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.remaining_days, remaining_days) ||
                other.remaining_days == remaining_days) &&
            (identical(other.remaining_days_info, remaining_days_info) ||
                other.remaining_days_info == remaining_days_info) &&
            (identical(other.start_date, start_date) ||
                other.start_date == start_date) &&
            (identical(other.package_trainer, package_trainer) ||
                other.package_trainer == package_trainer) &&
            (identical(other.start_time, start_time) ||
                other.start_time == start_time) &&
            (identical(other.end_time, end_time) ||
                other.end_time == end_time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      price,
      subtotal,
      discount,
      remaining_days,
      remaining_days_info,
      start_date,
      package_trainer,
      start_time,
      end_time);

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageImplCopyWith<_$PackageImpl> get copyWith =>
      __$$PackageImplCopyWithImpl<_$PackageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageImplToJson(
      this,
    );
  }
}

abstract class _Package implements Package {
  const factory _Package(
      {final int? id,
      final String? name,
      final int? price,
      final int? subtotal,
      final int? discount,
      final int? remaining_days,
      final String? remaining_days_info,
      final String? start_date,
      final PackageTrainer? package_trainer,
      final String? start_time,
      final String? end_time}) = _$PackageImpl;

  factory _Package.fromJson(Map<String, dynamic> json) = _$PackageImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get price;
  @override
  int? get subtotal;
  @override
  int? get discount;
  @override
  int? get remaining_days;
  @override
  String? get remaining_days_info;
  @override
  String? get start_date;
  @override
  PackageTrainer? get package_trainer;
  @override
  String? get start_time;
  @override
  String? get end_time;

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageImplCopyWith<_$PackageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PackageTrainer _$PackageTrainerFromJson(Map<String, dynamic> json) {
  return _PackageTrainer.fromJson(json);
}

/// @nodoc
mixin _$PackageTrainer {
  String? get trainer => throw _privateConstructorUsedError;
  String? get room => throw _privateConstructorUsedError;

  /// Serializes this PackageTrainer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackageTrainer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageTrainerCopyWith<PackageTrainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageTrainerCopyWith<$Res> {
  factory $PackageTrainerCopyWith(
          PackageTrainer value, $Res Function(PackageTrainer) then) =
      _$PackageTrainerCopyWithImpl<$Res, PackageTrainer>;
  @useResult
  $Res call({String? trainer, String? room});
}

/// @nodoc
class _$PackageTrainerCopyWithImpl<$Res, $Val extends PackageTrainer>
    implements $PackageTrainerCopyWith<$Res> {
  _$PackageTrainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageTrainer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainer = freezed,
    Object? room = freezed,
  }) {
    return _then(_value.copyWith(
      trainer: freezed == trainer
          ? _value.trainer
          : trainer // ignore: cast_nullable_to_non_nullable
              as String?,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageTrainerImplCopyWith<$Res>
    implements $PackageTrainerCopyWith<$Res> {
  factory _$$PackageTrainerImplCopyWith(_$PackageTrainerImpl value,
          $Res Function(_$PackageTrainerImpl) then) =
      __$$PackageTrainerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? trainer, String? room});
}

/// @nodoc
class __$$PackageTrainerImplCopyWithImpl<$Res>
    extends _$PackageTrainerCopyWithImpl<$Res, _$PackageTrainerImpl>
    implements _$$PackageTrainerImplCopyWith<$Res> {
  __$$PackageTrainerImplCopyWithImpl(
      _$PackageTrainerImpl _value, $Res Function(_$PackageTrainerImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageTrainer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainer = freezed,
    Object? room = freezed,
  }) {
    return _then(_$PackageTrainerImpl(
      trainer: freezed == trainer
          ? _value.trainer
          : trainer // ignore: cast_nullable_to_non_nullable
              as String?,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageTrainerImpl implements _PackageTrainer {
  const _$PackageTrainerImpl({this.trainer, this.room});

  factory _$PackageTrainerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageTrainerImplFromJson(json);

  @override
  final String? trainer;
  @override
  final String? room;

  @override
  String toString() {
    return 'PackageTrainer(trainer: $trainer, room: $room)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageTrainerImpl &&
            (identical(other.trainer, trainer) || other.trainer == trainer) &&
            (identical(other.room, room) || other.room == room));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, trainer, room);

  /// Create a copy of PackageTrainer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageTrainerImplCopyWith<_$PackageTrainerImpl> get copyWith =>
      __$$PackageTrainerImplCopyWithImpl<_$PackageTrainerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageTrainerImplToJson(
      this,
    );
  }
}

abstract class _PackageTrainer implements PackageTrainer {
  const factory _PackageTrainer({final String? trainer, final String? room}) =
      _$PackageTrainerImpl;

  factory _PackageTrainer.fromJson(Map<String, dynamic> json) =
      _$PackageTrainerImpl.fromJson;

  @override
  String? get trainer;
  @override
  String? get room;

  /// Create a copy of PackageTrainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageTrainerImplCopyWith<_$PackageTrainerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
