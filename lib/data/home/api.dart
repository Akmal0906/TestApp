import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeApi {
  final Dio _dio;

  HomeApi(this._dio);

  Future<Response> getMembership({bool? isActual, String? filter}) {
    final params = {
      "actual": isActual ?? true,
      "days": isActual == false ? filter : null,
    };

    params.removeWhere((key, value) => value == null);

    return _dio.get('v1/mobile/customer/memberships/', queryParameters: params);
  }

  Future<Response> getUnreadNotification() {
    return _dio.get('/v1/mobile/notifications/unread-count/');
  }

  Future<Response> merchantList(){
    return _dio.get('v1/mobile/customer/merchants/');
  }

  Future<Response> getGymList() {
    return _dio.get(
      "/v1/mobile/customer/gyms/",
    );
  }

  Future<Response> checkTerm() {
    return _dio.get('/v1/mobile/customer/accepted-terms-info/');
  }


}
