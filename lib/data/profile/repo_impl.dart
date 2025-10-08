import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:whitelabel/data/profile/api.dart';
import 'package:whitelabel/domain/models/user_info/user_info.dart';
import 'package:whitelabel/domain/repository/profile_repo.dart';
import 'package:new_version_plus/new_version_plus.dart';

import '../../common/hive_storage/hive_storage.dart';

@LazySingleton(as: ProfileRepo)
class ProfileRepoImpl extends ProfileRepo {

   ProfileRepoImpl(this._api,this.hiveStorage);
  final ProfileApi _api;
   final HiveStorage hiveStorage;


   @override
  Future<UserInfo> fetchUser() async {
    final Response response = await _api.fetchUser();
    return UserInfo.fromJson(response.data);
  }

   @override
   Future<bool> checkForceUpdate() async {
     NewVersionPlus newVersionPlus = NewVersionPlus();
     final status = await newVersionPlus.getVersionStatus();
     final request = await _api.checkForceUpdate(
         version: status?.localVersion ?? '',
         platformType: Platform.isIOS ? "ios" : "android");
     return request.data["results"]["is_force_update"];
   }

   @override
   Stream<UserInfo?> getUser() async* {
     await fetchUser();
     yield* hiveStorage.userInfo.watch();
   }
}
