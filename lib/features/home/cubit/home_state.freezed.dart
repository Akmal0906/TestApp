// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeBuildable {
  bool get loading => throw _privateConstructorUsedError;
  List<Membership>? get listMembership => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  int get notificationCount => throw _privateConstructorUsedError;
  List<MerchantModel>? get merchants => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  String get branchName => throw _privateConstructorUsedError;
  List<GymModel>? get listGymModel => throw _privateConstructorUsedError;

  /// Create a copy of HomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeBuildableCopyWith<HomeBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBuildableCopyWith<$Res> {
  factory $HomeBuildableCopyWith(
          HomeBuildable value, $Res Function(HomeBuildable) then) =
      _$HomeBuildableCopyWithImpl<$Res, HomeBuildable>;
  @useResult
  $Res call(
      {bool loading,
      List<Membership>? listMembership,
      String error,
      int notificationCount,
      List<MerchantModel>? merchants,
      int currentIndex,
      String branchName,
      List<GymModel>? listGymModel});
}

/// @nodoc
class _$HomeBuildableCopyWithImpl<$Res, $Val extends HomeBuildable>
    implements $HomeBuildableCopyWith<$Res> {
  _$HomeBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? listMembership = freezed,
    Object? error = null,
    Object? notificationCount = null,
    Object? merchants = freezed,
    Object? currentIndex = null,
    Object? branchName = null,
    Object? listGymModel = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      listMembership: freezed == listMembership
          ? _value.listMembership
          : listMembership // ignore: cast_nullable_to_non_nullable
              as List<Membership>?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      notificationCount: null == notificationCount
          ? _value.notificationCount
          : notificationCount // ignore: cast_nullable_to_non_nullable
              as int,
      merchants: freezed == merchants
          ? _value.merchants
          : merchants // ignore: cast_nullable_to_non_nullable
              as List<MerchantModel>?,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      branchName: null == branchName
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String,
      listGymModel: freezed == listGymModel
          ? _value.listGymModel
          : listGymModel // ignore: cast_nullable_to_non_nullable
              as List<GymModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeBuildableImplCopyWith<$Res>
    implements $HomeBuildableCopyWith<$Res> {
  factory _$$HomeBuildableImplCopyWith(
          _$HomeBuildableImpl value, $Res Function(_$HomeBuildableImpl) then) =
      __$$HomeBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      List<Membership>? listMembership,
      String error,
      int notificationCount,
      List<MerchantModel>? merchants,
      int currentIndex,
      String branchName,
      List<GymModel>? listGymModel});
}

/// @nodoc
class __$$HomeBuildableImplCopyWithImpl<$Res>
    extends _$HomeBuildableCopyWithImpl<$Res, _$HomeBuildableImpl>
    implements _$$HomeBuildableImplCopyWith<$Res> {
  __$$HomeBuildableImplCopyWithImpl(
      _$HomeBuildableImpl _value, $Res Function(_$HomeBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? listMembership = freezed,
    Object? error = null,
    Object? notificationCount = null,
    Object? merchants = freezed,
    Object? currentIndex = null,
    Object? branchName = null,
    Object? listGymModel = freezed,
  }) {
    return _then(_$HomeBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      listMembership: freezed == listMembership
          ? _value._listMembership
          : listMembership // ignore: cast_nullable_to_non_nullable
              as List<Membership>?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      notificationCount: null == notificationCount
          ? _value.notificationCount
          : notificationCount // ignore: cast_nullable_to_non_nullable
              as int,
      merchants: freezed == merchants
          ? _value._merchants
          : merchants // ignore: cast_nullable_to_non_nullable
              as List<MerchantModel>?,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      branchName: null == branchName
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String,
      listGymModel: freezed == listGymModel
          ? _value._listGymModel
          : listGymModel // ignore: cast_nullable_to_non_nullable
              as List<GymModel>?,
    ));
  }
}

/// @nodoc

class _$HomeBuildableImpl implements _HomeBuildable {
  const _$HomeBuildableImpl(
      {this.loading = false,
      final List<Membership>? listMembership,
      this.error = '',
      this.notificationCount = 0,
      final List<MerchantModel>? merchants,
      this.currentIndex = 0,
      this.branchName = '',
      final List<GymModel>? listGymModel})
      : _listMembership = listMembership,
        _merchants = merchants,
        _listGymModel = listGymModel;

  @override
  @JsonKey()
  final bool loading;
  final List<Membership>? _listMembership;
  @override
  List<Membership>? get listMembership {
    final value = _listMembership;
    if (value == null) return null;
    if (_listMembership is EqualUnmodifiableListView) return _listMembership;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final int notificationCount;
  final List<MerchantModel>? _merchants;
  @override
  List<MerchantModel>? get merchants {
    final value = _merchants;
    if (value == null) return null;
    if (_merchants is EqualUnmodifiableListView) return _merchants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int currentIndex;
  @override
  @JsonKey()
  final String branchName;
  final List<GymModel>? _listGymModel;
  @override
  List<GymModel>? get listGymModel {
    final value = _listGymModel;
    if (value == null) return null;
    if (_listGymModel is EqualUnmodifiableListView) return _listGymModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeBuildable(loading: $loading, listMembership: $listMembership, error: $error, notificationCount: $notificationCount, merchants: $merchants, currentIndex: $currentIndex, branchName: $branchName, listGymModel: $listGymModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality()
                .equals(other._listMembership, _listMembership) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.notificationCount, notificationCount) ||
                other.notificationCount == notificationCount) &&
            const DeepCollectionEquality()
                .equals(other._merchants, _merchants) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.branchName, branchName) ||
                other.branchName == branchName) &&
            const DeepCollectionEquality()
                .equals(other._listGymModel, _listGymModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      const DeepCollectionEquality().hash(_listMembership),
      error,
      notificationCount,
      const DeepCollectionEquality().hash(_merchants),
      currentIndex,
      branchName,
      const DeepCollectionEquality().hash(_listGymModel));

  /// Create a copy of HomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeBuildableImplCopyWith<_$HomeBuildableImpl> get copyWith =>
      __$$HomeBuildableImplCopyWithImpl<_$HomeBuildableImpl>(this, _$identity);
}

abstract class _HomeBuildable implements HomeBuildable {
  const factory _HomeBuildable(
      {final bool loading,
      final List<Membership>? listMembership,
      final String error,
      final int notificationCount,
      final List<MerchantModel>? merchants,
      final int currentIndex,
      final String branchName,
      final List<GymModel>? listGymModel}) = _$HomeBuildableImpl;

  @override
  bool get loading;
  @override
  List<Membership>? get listMembership;
  @override
  String get error;
  @override
  int get notificationCount;
  @override
  List<MerchantModel>? get merchants;
  @override
  int get currentIndex;
  @override
  String get branchName;
  @override
  List<GymModel>? get listGymModel;

  /// Create a copy of HomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeBuildableImplCopyWith<_$HomeBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeListenable {
  HomeEffect? get effect => throw _privateConstructorUsedError;
  List<MerchantModel>? get merchants => throw _privateConstructorUsedError;

  /// Create a copy of HomeListenable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeListenableCopyWith<HomeListenable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeListenableCopyWith<$Res> {
  factory $HomeListenableCopyWith(
          HomeListenable value, $Res Function(HomeListenable) then) =
      _$HomeListenableCopyWithImpl<$Res, HomeListenable>;
  @useResult
  $Res call({HomeEffect? effect, List<MerchantModel>? merchants});
}

/// @nodoc
class _$HomeListenableCopyWithImpl<$Res, $Val extends HomeListenable>
    implements $HomeListenableCopyWith<$Res> {
  _$HomeListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeListenable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? effect = freezed,
    Object? merchants = freezed,
  }) {
    return _then(_value.copyWith(
      effect: freezed == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as HomeEffect?,
      merchants: freezed == merchants
          ? _value.merchants
          : merchants // ignore: cast_nullable_to_non_nullable
              as List<MerchantModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeListenableImplCopyWith<$Res>
    implements $HomeListenableCopyWith<$Res> {
  factory _$$HomeListenableImplCopyWith(_$HomeListenableImpl value,
          $Res Function(_$HomeListenableImpl) then) =
      __$$HomeListenableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeEffect? effect, List<MerchantModel>? merchants});
}

/// @nodoc
class __$$HomeListenableImplCopyWithImpl<$Res>
    extends _$HomeListenableCopyWithImpl<$Res, _$HomeListenableImpl>
    implements _$$HomeListenableImplCopyWith<$Res> {
  __$$HomeListenableImplCopyWithImpl(
      _$HomeListenableImpl _value, $Res Function(_$HomeListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeListenable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? effect = freezed,
    Object? merchants = freezed,
  }) {
    return _then(_$HomeListenableImpl(
      effect: freezed == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as HomeEffect?,
      merchants: freezed == merchants
          ? _value._merchants
          : merchants // ignore: cast_nullable_to_non_nullable
              as List<MerchantModel>?,
    ));
  }
}

/// @nodoc

class _$HomeListenableImpl implements _HomeListenable {
  const _$HomeListenableImpl(
      {this.effect, final List<MerchantModel>? merchants})
      : _merchants = merchants;

  @override
  final HomeEffect? effect;
  final List<MerchantModel>? _merchants;
  @override
  List<MerchantModel>? get merchants {
    final value = _merchants;
    if (value == null) return null;
    if (_merchants is EqualUnmodifiableListView) return _merchants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeListenable(effect: $effect, merchants: $merchants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeListenableImpl &&
            (identical(other.effect, effect) || other.effect == effect) &&
            const DeepCollectionEquality()
                .equals(other._merchants, _merchants));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, effect, const DeepCollectionEquality().hash(_merchants));

  /// Create a copy of HomeListenable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeListenableImplCopyWith<_$HomeListenableImpl> get copyWith =>
      __$$HomeListenableImplCopyWithImpl<_$HomeListenableImpl>(
          this, _$identity);
}

abstract class _HomeListenable implements HomeListenable {
  const factory _HomeListenable(
      {final HomeEffect? effect,
      final List<MerchantModel>? merchants}) = _$HomeListenableImpl;

  @override
  HomeEffect? get effect;
  @override
  List<MerchantModel>? get merchants;

  /// Create a copy of HomeListenable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeListenableImplCopyWith<_$HomeListenableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
