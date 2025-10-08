import 'package:country_picker/country_picker.dart';

abstract class LoginRepository {
  Future<void> login({
    required String phone,
    required Country? country,
  });

  Future<void> otp({
    required String phone,
    required int code,
    required Country? country,
  });

  Future<void> fetchUser();
}
