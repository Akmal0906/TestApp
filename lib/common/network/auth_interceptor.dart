import 'dart:io';
import 'package:whitelabel/common/constants.dart';
import 'package:whitelabel/common/hive_storage/hive_storage.dart';
import 'package:whitelabel/common/router/my_router.dart';
import 'package:whitelabel/common/storage/app_storage.dart';
import 'package:whitelabel/domain/models/token/token.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
@lazySingleton
class AuthInterceptor extends QueuedInterceptor {
  AuthInterceptor(this.storage);

  final HiveStorage storage;

  @override
  void onRequest(
      RequestOptions options,
      RequestInterceptorHandler handler,
      ) {
    String timezone = Storage.timeZone;

    Token? token = Storage.getToken;
    if (token != null) {
      if (Storage.locationId != 0) {
        options.headers = {
         // "WL-APP": 1,
         // "timezone": timezone,
          HttpHeaders.cookieHeader: token.cookie,
          //"Club-Id": Storage.locationId,
        };
      } else {
        options.headers = {
          HttpHeaders.cookieHeader: token.cookie,
         // "WL-APP": 1,
        };
      }
    }
    options.headers.addAll({'Accept-Language': Storage.getLanguage});
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final cookies = response.headers.map[HttpHeaders.setCookieHeader];
    final token = Token.from(cookies);
    if (token != null) {
      Storage.token = token;
    }

    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
    if (err.response?.data["code"] == "not_authenticated" ||
        err.response?.data["code"] == "authentication_failed") {
      Storage.logged = false;
      Storage.setLocationId = 0;
      Storage.setLocationName = "";
      Storage.setGymName = "";
      Storage.setPurchaseStatus = false;
      Routing.router.go(Constants.login);
    }
  }
}