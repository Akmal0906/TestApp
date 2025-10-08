import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whitelabel/common/base/base_page.dart';
import 'package:whitelabel/common/constants.dart';
import 'package:whitelabel/common/extension/text_extension.dart';
import 'package:whitelabel/common/extension/theme_extension.dart';
import 'package:whitelabel/common/storage/app_storage.dart';
import 'package:whitelabel/features/home/widgets/home_appbar.dart';
import 'package:whitelabel/features/profile/cubit/profile_cubit.dart';
import 'package:whitelabel/features/profile/cubit/profile_state.dart';

import '../../common/gen/assets.gen.dart';

class ProfilePage
    extends BasePage<ProfileCubit, ProfileBuildable, ProfileListenable> {
  const ProfilePage({super.key});

  @override
  Widget builder(BuildContext context, ProfileBuildable state) {
    return Scaffold(
      appBar: HomeAppbar(
        title: Assets.icons.mainLogo.svg(
          height: 37,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
        isSynchronized:false,
      ),
      body: Center(child: Column(
        children: [
          Text('Profile page'),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            context.push(Constants.myMap);
          }, child: Text('My Map')),
        ],
      )),
      bottomNavigationBar: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {
          Storage.logged = false;
          Storage.clear();
          context.go(Constants.login);
        },
        child: Container(
          height: 44,
          width: double.infinity,
          alignment: Alignment.center,
          margin: EdgeInsets.fromLTRB(
            24,
            12,
            24,
            MediaQuery.of(context).padding.bottom + 12,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: context.colors.primary,
          ),
          child: 'Log out'.s(16).c(Colors.white).w(700),
        ),
      ),
    );
  }
}
