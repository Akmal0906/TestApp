import 'package:country_picker/country_picker.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginApi {
  final Dio _dio;

  LoginApi(this._dio);

  Future<Response> login({
    required String phone,
    required Country? country,
  }) async {
    final data = {"phone": "+${country?.countryCode ?? 998}$phone"};
    return _dio.post("v1/users/send-otp/", data: data);
  }

  Future<Response> otp({
    required String phone,
    required int code,
    required Country? country,
  }) {
    final data = {
      "phone": "+${country?.countryCode ?? 998}$phone",
      "code": code,
    };

    return _dio.post('v1/users/verify-otp/', data: data);
  }

}
