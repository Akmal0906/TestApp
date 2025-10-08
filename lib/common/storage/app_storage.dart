import 'dart:convert';

import 'package:whitelabel/common/constants.dart';
import 'package:whitelabel/domain/models/token/token.dart';
import 'package:get_secure_storage/get_secure_storage.dart';


class Storage {
  static late final GetSecureStorage storage;
  static final Storage _instance = Storage._internal();

  static Storage get instance => _instance;

  factory Storage() {
    return _instance;
  }

  Storage._internal() {
    storage = GetSecureStorage(password: Constants.storagePassword);
  }

  static set setLanguage(String value) => storage.write("language", value);

  static clear()=>storage.erase();

  static String get getLanguage =>
      storage.hasData("language") ? storage.read("language") : "ru";

  static String get getAccessToken =>
      storage.hasData('access_token') ? storage.read('access_token') : '';

  static set setPurchaseStatus(bool purchased) =>
      storage.write("purchased", purchased);

  static bool get isPurchased =>
      storage.hasData("purchased") ? storage.read("purchased") : false;

  static set logged(bool logged) => storage.write("logged", logged);

  static bool get isLogged =>
      storage.hasData("logged") ? storage.read("logged") : false;

  static set isMarCardsView(bool mycardViewd) =>
      storage.write("cardsViewd", mycardViewd);

  static bool get isMarCardsView =>
      storage.hasData("cardsViewd") ? storage.read("cardsViewd") : false;

  static set isHistoryViewed(bool historyViewed) =>
      storage.write("historyVied", historyViewed);

  static bool get isHistoryViewed =>
      storage.hasData("historyVied") ? storage.read("historyVied") : false;

  static set token(Token token) =>
      storage.write("token", jsonEncode(token.toJson()));

  static Token? get getToken => storage.hasData("token")
      ? Token.fromJson(jsonDecode(storage.read('token')))
      : null;

  static set changeAccessToken(String token) =>
      storage.write('access_token', token);

  static String get getRefreshToken =>
      storage.hasData('refresh_token') ? storage.read('refresh_token') : '';

  static set changeRefreshToken(String token) =>
      storage.write('refresh_token', token);

  static int get locationId =>
      storage.hasData('gym_id') ? storage.read('gym_id') : 0;

  static set setLocationId(int id) => storage.write('gym_id', id);

  static String get locationName =>
      storage.hasData('location_name') ? storage.read('location_name') : "";

  static set setLocationName(String name) =>
      storage.write('location_name', name);

  static String get gymName =>
      storage.hasData('gym_name') ? storage.read('gym_name') : "";

  static set setGymName(String name) => storage.write('gym_name', name);

  static String get timeZone =>
      storage.hasData('time_zone') ? storage.read('time_zone') : '';

  static set timeZone(String zone) => storage.write('time_zone', zone);

  static String get fcmToken =>
      storage.hasData('fcm_token') ? storage.read('fcm_token') : '';

  static set fcmToken(String token) => storage.write('fcm_token', token);

  static bool get notification =>
      storage.hasData("notification") ? storage.read("notification") : false;

  static set notification(bool access) => storage.write("notification", access);
}
