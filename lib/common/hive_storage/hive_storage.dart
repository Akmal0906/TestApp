import 'package:whitelabel/common/base/base_storage.dart';
import 'package:whitelabel/domain/models/user_info/user_info.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class HiveStorage {
  HiveStorage(this._box);

  final Box _box;

  @FactoryMethod(preResolve: true)
  static Future<HiveStorage> create() async {
    await Hive.initFlutter();
    Hive.registerAdapter(UserInfoImplAdapter());
    final box = await Hive.openBox('storage');
    return HiveStorage(box);
  }

  BaseStorage<UserInfo> get userInfo => BaseStorage(_box, 'user_info');
}

