import 'package:whitelabel/domain/models/user_info/user_info.dart';

abstract class ProfileRepo{
  Future<UserInfo> fetchUser();
  Stream<UserInfo?> getUser();
  Future<bool> checkForceUpdate();


}