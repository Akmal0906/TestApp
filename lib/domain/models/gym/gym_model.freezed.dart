// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gym_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GymModel _$GymModelFromJson(Map<String, dynamic> json) {
  return _GymModel.fromJson(json);
}

/// @nodoc
mixin _$GymModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  bool? get is_active => throw _privateConstructorUsedError;

  /// Serializes this GymModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GymModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GymModelCopyWith<GymModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GymModelCopyWith<$Res> {
  factory $GymModelCopyWith(GymModel value, $Res Function(GymModel) then) =
      _$GymModelCopyWithImpl<$Res, GymModel>;
  @useResult
  $Res call({int? id, String? name, bool? is_active});
}

/// @nodoc
class _$GymModelCopyWithImpl<$Res, $Val extends GymModel>
    implements $GymModelCopyWith<$Res> {
  _$GymModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GymModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? is_active = freezed,
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
      is_active: freezed == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GymModelImplCopyWith<$Res>
    implements $GymModelCopyWith<$Res> {
  factory _$$GymModelImplCopyWith(
          _$GymModelImpl value, $Res Function(_$GymModelImpl) then) =
      __$$GymModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, bool? is_active});
}

/// @nodoc
class __$$GymModelImplCopyWithImpl<$Res>
    extends _$GymModelCopyWithImpl<$Res, _$GymModelImpl>
    implements _$$GymModelImplCopyWith<$Res> {
  __$$GymModelImplCopyWithImpl(
      _$GymModelImpl _value, $Res Function(_$GymModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GymModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? is_active = freezed,
  }) {
    return _then(_$GymModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$GymModelImpl implements _GymModel {
  const _$GymModelImpl({this.id, this.name, this.is_active});

  factory _$GymModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GymModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final bool? is_active;

  @override
  String toString() {
    return 'GymModel(id: $id, name: $name, is_active: $is_active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GymModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.is_active, is_active) ||
                other.is_active == is_active));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, is_active);

  /// Create a copy of GymModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GymModelImplCopyWith<_$GymModelImpl> get copyWith =>
      __$$GymModelImplCopyWithImpl<_$GymModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GymModelImplToJson(
      this,
    );
  }
}

abstract class _GymModel implements GymModel {
  const factory _GymModel(
      {final int? id,
      final String? name,
      final bool? is_active}) = _$GymModelImpl;

  factory _GymModel.fromJson(Map<String, dynamic> json) =
      _$GymModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  bool? get is_active;

  /// Create a copy of GymModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GymModelImplCopyWith<_$GymModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
