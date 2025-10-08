import 'package:dio/dio.dart';
import 'package:whitelabel/domain/models/membership/membership.dart';
import 'package:whitelabel/domain/models/merchant/merchant_model.dart';

import '../models/gym/gym_model.dart';

abstract class HomeRepo{

Future<List<Membership>> getMembership({bool? isActual,String? filter});

Future<int> getUnreadNotification();

Future<List<MerchantModel>>merchantList();

Future<List<GymModel>> getLocations();
Future<bool> checkTerm();



}