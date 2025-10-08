import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whitelabel/common/base/base_page.dart';
import 'package:whitelabel/common/common_pages/not_purchased.dart';
import 'package:whitelabel/common/common_widgets/common_button.dart';
import 'package:whitelabel/common/extension/text_extension.dart';
import 'package:whitelabel/common/extension/theme_extension.dart';
import 'package:whitelabel/common/storage/app_storage.dart';
import 'package:whitelabel/features/home/cubit/home_cubit.dart';
import 'package:whitelabel/features/home/cubit/home_state.dart';
import 'package:whitelabel/features/home/widgets/home_appbar.dart';
import 'package:whitelabel/features/home/widgets/home_drop_down.dart';
import 'package:whitelabel/features/home/widgets/home_verified.dart';

import '../../common/colors/static_colors.dart';
import '../../common/gen/assets.gen.dart';

class HomePage extends BasePage<HomeCubit, HomeBuildable, HomeListenable> {
  const HomePage({super.key});

  @override
  void init(BuildContext context) {
    super.init(context);
    context.read<HomeCubit>().getMembership();
  }

  @override
  void listener(BuildContext context, HomeListenable state) {
    super.listener(context, state);
    if(state.effect==HomeEffect.gymList){
      showDialog(
        context: context,
        builder: (dialogContext) {
          return Dialog(
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      'Location'.s(14).w(700).c(StaticColors.nero),
                      InkWell(
                        onTap: () {
                          Navigator.of(dialogContext).pop();
                        },
                        child: Assets.icons.cancel.svg(
                          colorFilter: ColorFilter.mode(
                            StaticColors.nero,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      bottom: 10,
                    ),
                    child: Divider(
                      thickness: 1,
                      color: Color.fromRGBO(156, 163, 175, 0.5),
                    ),
                  ),

                  'Gym name:'
                      .s(14)
                      .w(700)
                      .c(Color.fromRGBO(0, 0, 0, 1)),

                  Container(
                    height: 52,
                    padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                    margin: EdgeInsets.only(top: 8, bottom: 24),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: Color.fromRGBO(156, 163, 175, 1),
                      ),
                    ),
                    child: 'I LOVE SUPER SPORT'
                        .s(14)
                        .w(400)
                        .c(Color.fromRGBO(0, 0, 0, 1)),
                  ),

                  'Location:'
                      .s(14)
                      .w(700)
                      .c(Color.fromRGBO(0, 0, 0, 1)),

                  // DropdownMenu<String>(
                  //   expandedInsets: EdgeInsets.only(left: 10),
                  //   initialSelection: cubit.buildable.branchName,
                  //   onSelected: (value) {
                  //     cubit.changeBranchName(value ?? "");
                  //   },
                  //
                  //   menuStyle: MenuStyle(
                  //     backgroundColor: WidgetStatePropertyAll(
                  //       Colors.grey,
                  //     ),
                  //
                  //     shape: WidgetStatePropertyAll(
                  //       RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(6),
                  //       ),
                  //     ),
                  //   ),
                  //
                  //   dropdownMenuEntries: [
                  //     DropdownMenuEntry(value: 'one', label: 'One'),
                  //     DropdownMenuEntry(value: 'two', label: 'Two'),
                  //     DropdownMenuEntry(value: 'three', label: 'Three'),
                  //   ],
                  // ),

                  HomeDropDown(
                    onchange: (String? value) {
                      context.read<HomeCubit>().changeBranchName(value ?? "");
                    },
                    hintText: context.read<HomeCubit>().buildable.branchName,
                    list: context.read<HomeCubit>().buildable.listGymModel??[],
                  ),

                  Align(
                    alignment: Alignment.center,
                    child: CommonButton(
                      height: 36,
                      width: 200,
                      padding: EdgeInsets.zero,
                      margin: EdgeInsets.only(top: 12),
                      onTap: (){
                        Navigator.of(context).pop();
                        context.read<HomeCubit>()..getUnreadNotificationCount()..getGymList();
                      },title: 'Save',background: context.colors.primary,titleColor: Colors.white,),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }
  }

  @override
  Widget builder(BuildContext context, HomeBuildable state) {
    final cubit = context.read<HomeCubit>();
    return Scaffold(
      backgroundColor: context.colors.backgroundWhite,
      appBar: HomeAppbar(
        title: Assets.icons.mainLogo.svg(
          fit: BoxFit.cover,
          height: 37,
          colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
        isSynchronized: Storage.isPurchased,
      ),
      body:
          !Storage.isPurchased
              ? NotPurchased(refresh: () {})
              : HomeVerified(cubit: cubit, index: state.currentIndex,state: state,),
    );
  }
}
