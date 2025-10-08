import 'package:flutter/material.dart';
import 'package:whitelabel/common/base/base_page.dart';
import 'package:whitelabel/common/extension/theme_extension.dart';
import 'package:whitelabel/features/app/cubit/app_cubit.dart';
import 'package:whitelabel/features/app/cubit/app_state.dart';
import '../../common/common_widgets/toast_message/display_widget.dart';
import '../../common/router/my_router.dart';
class MyApp extends BasePage<AppCubit,AppBuildable,AppListenable> {
  const MyApp({super.key});

  @override
  Widget builder(BuildContext context, AppBuildable state) {
    return DisplayWidget(
      child: Stack(
        children: [
          MaterialApp.router(
            title: 'Flutter Demo',
            routerConfig: Routing.router,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: "Muller",
              colorScheme:
              ColorScheme.fromSeed(seedColor: const Color(0xff4AB4BF)),
              useMaterial3: true,
              scaffoldBackgroundColor: context.colors.white,
              appBarTheme: AppBarTheme(backgroundColor: context.colors.white),
            ),
          ),
        ],
      ),
    );
  }


}
