
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProfileApi{
  final Dio _dio;
  const ProfileApi(this._dio);

  Future<Response> fetchUser(){
return _dio.get('v1/mobile/customer/profile/');
  }

  Future<Response> checkForceUpdate(
      {required String version, required String platformType}) {
    final data = {
      "version": version,
      "platform_type": platformType,
      "white_label": "ilovesupersport",
    };
    return _dio.post('v1/users/version-check/', data: data);
  }
}