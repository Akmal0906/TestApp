// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MerchantModel _$MerchantModelFromJson(Map<String, dynamic> json) {
  return _MerchantModel.fromJson(json);
}

/// @nodoc
mixin _$MerchantModel {
  int? get id => throw _privateConstructorUsedError;
  String? get merchant_name => throw _privateConstructorUsedError;
  bool? get is_active => throw _privateConstructorUsedError;

  /// Serializes this MerchantModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MerchantModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MerchantModelCopyWith<MerchantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantModelCopyWith<$Res> {
  factory $MerchantModelCopyWith(
          MerchantModel value, $Res Function(MerchantModel) then) =
      _$MerchantModelCopyWithImpl<$Res, MerchantModel>;
  @useResult
  $Res call({int? id, String? merchant_name, bool? is_active});
}

/// @nodoc
class _$MerchantModelCopyWithImpl<$Res, $Val extends MerchantModel>
    implements $MerchantModelCopyWith<$Res> {
  _$MerchantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchantModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? merchant_name = freezed,
    Object? is_active = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      merchant_name: freezed == merchant_name
          ? _value.merchant_name
          : merchant_name // ignore: cast_nullable_to_non_nullable
              as String?,
      is_active: freezed == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MerchantModelImplCopyWith<$Res>
    implements $MerchantModelCopyWith<$Res> {
  factory _$$MerchantModelImplCopyWith(
          _$MerchantModelImpl value, $Res Function(_$MerchantModelImpl) then) =
      __$$MerchantModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? merchant_name, bool? is_active});
}

/// @nodoc
class __$$MerchantModelImplCopyWithImpl<$Res>
    extends _$MerchantModelCopyWithImpl<$Res, _$MerchantModelImpl>
    implements _$$MerchantModelImplCopyWith<$Res> {
  __$$MerchantModelImplCopyWithImpl(
      _$MerchantModelImpl _value, $Res Function(_$MerchantModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchantModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? merchant_name = freezed,
    Object? is_active = freezed,
  }) {
    return _then(_$MerchantModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      merchant_name: freezed == merchant_name
          ? _value.merchant_name
          : merchant_name // ignore: cast_nullable_to_non_nullable
              as String?,
      is_active: freezed == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MerchantModelImpl implements _MerchantModel {
  const _$MerchantModelImpl({this.id, this.merchant_name, this.is_active});

  factory _$MerchantModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MerchantModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? merchant_name;
  @override
  final bool? is_active;

  @override
  String toString() {
    return 'MerchantModel(id: $id, merchant_name: $merchant_name, is_active: $is_active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchantModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.merchant_name, merchant_name) ||
                other.merchant_name == merchant_name) &&
            (identical(other.is_active, is_active) ||
                other.is_active == is_active));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, merchant_name, is_active);

  /// Create a copy of MerchantModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MerchantModelImplCopyWith<_$MerchantModelImpl> get copyWith =>
      __$$MerchantModelImplCopyWithImpl<_$MerchantModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MerchantModelImplToJson(
      this,
    );
  }
}

abstract class _MerchantModel implements MerchantModel {
  const factory _MerchantModel(
      {final int? id,
      final String? merchant_name,
      final bool? is_active}) = _$MerchantModelImpl;

  factory _MerchantModel.fromJson(Map<String, dynamic> json) =
      _$MerchantModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get merchant_name;
  @override
  bool? get is_active;

  /// Create a copy of MerchantModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MerchantModelImplCopyWith<_$MerchantModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
