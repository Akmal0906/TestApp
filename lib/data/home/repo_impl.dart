import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:whitelabel/data/home/api.dart';
import 'package:whitelabel/domain/models/gym/gym_model.dart';
import 'package:whitelabel/domain/models/membership/membership.dart';
import 'package:whitelabel/domain/models/merchant/merchant_model.dart';
import 'package:whitelabel/domain/repository/home_repo.dart';

import '../../common/storage/app_storage.dart';

@LazySingleton(as: HomeRepo)
class HomeRepoImpl extends HomeRepo {
  final HomeApi _api;

  HomeRepoImpl(this._api);

  //https://supersport.qa.deepen.uz/api/v1/mobile/customer/profile/
  @override
  Future<List<Membership>> getMembership({
    bool? isActual,
    String? filter,
  }) async {
    final gymResponse = await getLocations();

    if (gymResponse.length == 1) {
      Storage.setLocationId = gymResponse.first.id ?? 0;
    }

    final Response response = await _api.getMembership(
      isActual: isActual,
      filter: filter,
    );
    return membershipListFromJson(response.data["results"]);
  }

  @override
  Future<int> getUnreadNotification() async {
    final Response response = await _api.getUnreadNotification();
    return response.data['results']['unread_count'];
  }

  @override
  Future<List<MerchantModel>> merchantList() async {
    final Response response = await _api.merchantList();
    return merchantListFromJson(response.data['result']);
  }

  @override
  Future<bool> checkTerm() async{
    final Response response=await _api.checkTerm();
    return response.data["results"]["accepted"];
  }

  @override
  Future<List<GymModel>> getLocations() async{
   final response=await _api.getGymList();
   return gymListFromJson(response.data["results"]);
  }
}
