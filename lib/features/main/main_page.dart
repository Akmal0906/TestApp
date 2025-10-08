import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whitelabel/common/base/base_page.dart';
import 'package:whitelabel/common/colors/static_colors.dart';
import 'package:whitelabel/common/extension/text_extension.dart';
import 'package:whitelabel/features/main/cubit/main_cubit.dart';
import 'package:whitelabel/features/main/cubit/main_state.dart';
import '../../common/gen/assets.gen.dart';

class MainPage extends BasePage<MainCubit, MainBuildable, MainListenable> {
  const MainPage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget builder(BuildContext context, MainBuildable state) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: Container(
        height: 83,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.05)),
          boxShadow: [
            BoxShadow(
              offset: Offset(6, 2),
              blurRadius: 12,
              color: Color.fromRGBO(233, 233, 233, 0.45),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                navigationShell.goBranch(0);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.icons.home.svg(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      navigationShell.currentIndex == 0
                          ? StaticColors.nero
                          : StaticColors.greyScale4,
                      BlendMode.srcIn,
                    ),
                  ),
                  'Home'
                      .s(10)
                      .c(
                        navigationShell.currentIndex == 0
                            ? StaticColors.nero
                            : StaticColors.greyScale4,
                      ).w(700),
                ],
              ),
            ),

            InkWell(
              onTap: () {},
              child: Container(
                height: 59,
                width: 59,
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(0, 0, 0, 0.2),

                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 12),
                      blurRadius: 25,
                      color: Color.fromRGBO(35, 0, 75, 0.12),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  backgroundColor: StaticColors.nero,
                  radius: 24,
                  child: Assets.icons.scan1.svg(
                    colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    height: 24,
                    width: 24,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            InkWell(
              onTap: () {
                navigationShell.goBranch(1);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.icons.person.svg(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      navigationShell.currentIndex == 1
                          ? StaticColors.nero
                          : StaticColors.greyScale4,
                      BlendMode.srcIn,
                    ),
                  ),
                  'Profile'
                      .s(10)
                      .c(
                        navigationShell.currentIndex == 1
                            ? StaticColors.nero
                            : StaticColors.greyScale4,
                      ).w(700),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// return Scaffold(
// body: navigationShell,
// bottomNavigationBar: Container(
// decoration: BoxDecoration(
// color: Colors.white,
// border: Border.all(
// color: Color.fromRGBO(0, 0, 0, 0.05)
// ),
// boxShadow: [
// BoxShadow(
// offset: Offset(6,2),
// blurRadius: 12,
// color: Color.fromRGBO(233, 233, 233, 0.45)
//
// )
// ]
// ),
// child: BottomNavigationBar(
// backgroundColor: Colors.white,
// elevation: 0,
//
// currentIndex: navigationShell.currentIndex,
// items: [
// BottomNavigationBarItem(icon: Assets.icons.home.svg(), label: 'home'),
// BottomNavigationBarItem(icon: Assets.icons.profile.svg(), label: 'profile'),
// ],
// onTap: (index) {
// navigationShell.goBranch(
// index,
// initialLocation: index == navigationShell.currentIndex,
// );
// },
// ),
// ),
// );
