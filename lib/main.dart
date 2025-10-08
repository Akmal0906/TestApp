
import 'package:flutter/material.dart';
import 'package:whitelabel/common/common_widgets/toast_message/display.dart';
import 'common/di/injection.dart';
import 'common/router/my_router.dart';
import 'common/storage/app_storage.dart';
import 'features/app/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  Storage.instance;
  Routing.instance;
  print(getIt.isRegistered<Display>());
  runApp(const MyApp());
}
