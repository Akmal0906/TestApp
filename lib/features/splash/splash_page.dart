import 'package:flutter/material.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:whitelabel/common/constants.dart';
import 'package:whitelabel/common/extension/text_extension.dart';
import 'package:whitelabel/common/extension/theme_extension.dart';
import 'package:whitelabel/common/router/my_router.dart';
import 'package:whitelabel/common/storage/app_storage.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0.0, end: 1.0),
          duration: Duration(milliseconds: 1500),
          onEnd: () async {
            String timezone = await FlutterTimezone
                .getLocalTimezone()
                .catchError(
                  (_) {
                return '';
              },
            );

            Storage.timeZone = timezone;
            Storage.isLogged
                ? Routing.router.go(Constants.home) :
            Routing.router.go(Constants.login);
          },
          builder: (BuildContext context, double value, Widget? child) {
            return Opacity(
              opacity: value,

            );
          }
      ),);
  }
}

