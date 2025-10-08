// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:whitelabel/common/common_widgets/toast_message/display.dart'
    as _i870;
import 'package:whitelabel/common/common_widgets/toast_message/display_impl.dart'
    as _i334;
import 'package:whitelabel/common/di/app_module.dart' as _i157;
import 'package:whitelabel/common/hive_storage/hive_storage.dart' as _i512;
import 'package:whitelabel/common/network/auth_interceptor.dart' as _i787;
import 'package:whitelabel/common/network/network_manager.dart' as _i705;
import 'package:whitelabel/data/home/api.dart' as _i743;
import 'package:whitelabel/data/home/repo_impl.dart' as _i290;
import 'package:whitelabel/data/login/api.dart' as _i32;
import 'package:whitelabel/data/login/repo_impl.dart' as _i1000;
import 'package:whitelabel/data/profile/api.dart' as _i643;
import 'package:whitelabel/data/profile/repo_impl.dart' as _i1069;
import 'package:whitelabel/domain/repository/home_repo.dart' as _i300;
import 'package:whitelabel/domain/repository/login_repo.dart' as _i799;
import 'package:whitelabel/domain/repository/profile_repo.dart' as _i5;
import 'package:whitelabel/features/app/cubit/app_cubit.dart' as _i790;
import 'package:whitelabel/features/home/cubit/home_cubit.dart' as _i566;
import 'package:whitelabel/features/login/cubit/login_cubit.dart' as _i638;
import 'package:whitelabel/features/main/cubit/main_cubit.dart' as _i972;
import 'package:whitelabel/features/my_map/cubit/my_map_cubit.dart' as _i118;
import 'package:whitelabel/features/profile/cubit/profile_cubit.dart' as _i963;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    final networkModule = _$NetworkModule();
    gh.factory<_i972.MainCubit>(() => _i972.MainCubit());
    gh.factory<_i118.MyMapCubit>(() => _i118.MyMapCubit());
    gh.factory<_i963.ProfileCubit>(() => _i963.ProfileCubit());
    gh.lazySingleton<_i974.Logger>(() => appModule.logger);
    await gh.lazySingletonAsync<_i512.HiveStorage>(
      () => _i512.HiveStorage.create(),
      preResolve: true,
    );
    gh.singleton<_i870.Display>(() => _i334.DisplayImpl());
    gh.lazySingleton<_i787.AuthInterceptor>(
        () => _i787.AuthInterceptor(gh<_i512.HiveStorage>()));
    gh.factory<_i361.Dio>(() => networkModule.dio(gh<_i787.AuthInterceptor>()));
    gh.factory<_i743.HomeApi>(() => _i743.HomeApi(gh<_i361.Dio>()));
    gh.factory<_i32.LoginApi>(() => _i32.LoginApi(gh<_i361.Dio>()));
    gh.factory<_i643.ProfileApi>(() => _i643.ProfileApi(gh<_i361.Dio>()));
    gh.factory<_i799.LoginRepository>(() => _i1000.LoginRepoImpl(
          gh<_i32.LoginApi>(),
          gh<_i643.ProfileApi>(),
          gh<_i512.HiveStorage>(),
        ));
    gh.lazySingleton<_i5.ProfileRepo>(() => _i1069.ProfileRepoImpl(
          gh<_i643.ProfileApi>(),
          gh<_i512.HiveStorage>(),
        ));
    gh.factory<_i638.LoginCubit>(
        () => _i638.LoginCubit(gh<_i799.LoginRepository>()));
    gh.lazySingleton<_i300.HomeRepo>(
        () => _i290.HomeRepoImpl(gh<_i743.HomeApi>()));
    gh.factory<_i790.AppCubit>(() => _i790.AppCubit(gh<_i5.ProfileRepo>()));
    gh.factory<_i566.HomeCubit>(() => _i566.HomeCubit(gh<_i300.HomeRepo>()));
    return this;
  }
}

class _$AppModule extends _i157.AppModule {}

class _$NetworkModule extends _i705.NetworkModule {}
