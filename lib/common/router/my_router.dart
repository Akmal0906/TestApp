import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whitelabel/common/common_pages/error_page.dart';
import 'package:whitelabel/common/constants.dart';
import 'package:whitelabel/features/home/home_page.dart';
import 'package:whitelabel/features/login/login.dart';
import 'package:whitelabel/features/main/main_page.dart';
import 'package:whitelabel/features/my_map/my_map_page.dart';
import 'package:whitelabel/features/profile/profile_page.dart';
import 'package:whitelabel/features/splash/splash_page.dart';

class Routing {
  static late final GoRouter router;
  static final Routing _instance = Routing._internal();

  static Routing get instance => _instance;

  BuildContext get context =>
      router.routerDelegate.navigatorKey.currentContext!;

  GoRouterDelegate get routerDelegate => router.routerDelegate;

  GoRouteInformationParser get routeInformationParser =>
      router.routeInformationParser;

  factory Routing() {
    return _instance;
  }

  Routing._internal() {
    final routes = <RouteBase>[
      GoRoute(path: Constants.splash, builder: (_, state) => SplashPage()),
      GoRoute(path: Constants.login, builder: (_, state) => Login()),

      StatefulShellRoute.indexedStack(
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(path: Constants.home, builder: (_, state) => HomePage()),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(path: Constants.profile, builder: (_, state) => ProfilePage()),
            ],
          ),
        ],
        builder: (_,state,navigationShell){
          return MainPage(navigationShell: navigationShell,);
        }
      ),
      GoRoute(
        path: Constants.myMap,
        pageBuilder: (_, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: MyMapPage(),
            transitionsBuilder: (_, animation, secondaryAnimation, child) {
              final tween = Tween<Offset>(
                begin: const Offset(1,0),
                end: Offset.zero,
              ).chain(CurveTween(curve: Curves.easeInOut));

              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          );
        },
      ),


    ];

    router = GoRouter(
      initialLocation: Constants.splash,
      routes: routes,
      errorPageBuilder: (context, state) {
        return MaterialPage(child: ErrorPage());
      },
    );
  }
}
