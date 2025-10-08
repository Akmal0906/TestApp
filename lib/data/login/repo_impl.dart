import 'package:country_picker/src/country.dart';
import 'package:injectable/injectable.dart';
import 'package:whitelabel/domain/repository/login_repo.dart';

import '../../common/hive_storage/hive_storage.dart';
import '../../common/storage/app_storage.dart';
import '../../domain/models/user_info/user_info.dart';
import '../profile/api.dart';
import 'api.dart';

@Injectable(as: LoginRepository)
class LoginRepoImpl extends LoginRepository {
  // final NotificationServices notificationServices = NotificationServices();
  final LoginApi _api;

  final ProfileApi _profileApi;
   final HiveStorage _hiveStorage;
  // final HomeRepo _homeRepo;
  //
  LoginRepoImpl(
    this._api,
    this._profileApi,
    // this._profileApi,
     this._hiveStorage,
    // this._homeRepo,
  );



  @override
  Future<void> login({required String phone, required Country? country}) async {
    final response = await _api.login(phone: phone, country: country);

  }

  @override
  Future<void> otp({
    required String phone,
    required int code,
    required Country? country,
  }) async {
    final response = await _api.otp(phone: phone, code: code, country: country);
    print('*****************');
    print(response.headers['set-cookie']);
    print('*****************');
    Storage.logged = true;
    await fetchUser();
  }

  @override
  Future<void> fetchUser() async {
    print('******* ISHLAVOTII');
    final userResponse = await _profileApi.fetchUser();
    final userInfo = UserInfo.fromJson(userResponse.data['results']);
    await _hiveStorage.userInfo.set(userInfo);
    Storage.setPurchaseStatus =
        _hiveStorage.userInfo.call()?.is_synchronized ?? false;
  }
}
