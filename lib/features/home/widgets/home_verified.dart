import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whitelabel/common/colors/static_colors.dart';
import 'package:whitelabel/common/common_widgets/common_button.dart';
import 'package:whitelabel/common/extension/text_extension.dart';
import 'package:whitelabel/common/extension/theme_extension.dart';
import 'package:whitelabel/features/home/cubit/home_cubit.dart';
import 'package:whitelabel/features/home/cubit/home_state.dart';
import 'package:whitelabel/features/home/widgets/purchase_item.dart';
import '../../../common/gen/assets.gen.dart';
import 'home_drop_down.dart';

class HomeVerified extends StatelessWidget {
  const HomeVerified({
    super.key,
    required this.index,
    this.tabBar1,
    this.tabBar2,
    required this.cubit,
    required this.state,
  });

  final int index;
  final VoidCallback? tabBar1;
  final VoidCallback? tabBar2;
  final HomeCubit cubit;
  final HomeBuildable state;

  @override
  Widget build(BuildContext context) {
    print('state build ${state.branchName}');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonButton(
          onTap: () {},
          title: 'Buy package',
          height: 44,
          background: context.colors.primary,
          margin: EdgeInsets.fromLTRB(24, 28, 24, 12),
        ),

        Container(
          height: 32,
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(24, 12, 24, 8),
          padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: InkWell(
                  onTap:
                      tabBar1 ??
                      () {
                        if (index != 0) {
                          cubit.changeCurrentIndex(0);
                        }
                      },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(index == 0 ? 5 : 0),
                      color:
                          index == 0
                              ? context.colors.primary
                              : Colors.transparent,
                    ),
                    child: 'Activity'.s(14).c(Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap:
                      tabBar2 ??
                      () {
                        if (index != 1) {
                          cubit.changeCurrentIndex(1);
                        }
                      },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(index == 1 ? 5 : 0),
                      color:
                          index == 1
                              ? context.colors.primary
                              : Colors.transparent,
                    ),
                    child: "History".s(14).c(Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
               cubit.getGymList();
              print('LIST GYMMODEL ${state.listGymModel}');

              // showDialog(
              //   context: context,
              //   builder: (dialogContext) {
              //     return StatefulBuilder(
              //       builder: (context, setState) {
              //         return Dialog(
              //           child: Container(
              //             padding: EdgeInsets.all(16),
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(8),
              //               color: Colors.white,
              //             ),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               mainAxisSize: MainAxisSize.min,
              //               children: [
              //                 Row(
              //                   crossAxisAlignment: CrossAxisAlignment.center,
              //                   mainAxisSize: MainAxisSize.max,
              //                   mainAxisAlignment:
              //                       MainAxisAlignment.spaceBetween,
              //                   children: [
              //                     'Location'.s(14).w(700).c(StaticColors.nero),
              //                     InkWell(
              //                       onTap: () {
              //                         Navigator.of(dialogContext).pop();
              //                       },
              //                       child: Assets.icons.cancel.svg(
              //                         colorFilter: ColorFilter.mode(
              //                           StaticColors.nero,
              //                           BlendMode.srcIn,
              //                         ),
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsets.only(
              //                     top: 8.0,
              //                     bottom: 10,
              //                   ),
              //                   child: Divider(
              //                     thickness: 1,
              //                     color: Color.fromRGBO(156, 163, 175, 0.5),
              //                   ),
              //                 ),
              //
              //                 'Gym name:'
              //                     .s(14)
              //                     .w(700)
              //                     .c(Color.fromRGBO(0, 0, 0, 1)),
              //
              //                 Container(
              //                   height: 52,
              //                   padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
              //                   margin: EdgeInsets.only(top: 8, bottom: 24),
              //                   alignment: Alignment.centerLeft,
              //                   decoration: BoxDecoration(
              //                     borderRadius: BorderRadius.circular(6),
              //                     border: Border.all(
              //                       color: Color.fromRGBO(156, 163, 175, 1),
              //                     ),
              //                   ),
              //                   child: 'I LOVE SUPER SPORT'
              //                       .s(14)
              //                       .w(400)
              //                       .c(Color.fromRGBO(0, 0, 0, 1)),
              //                 ),
              //
              //                 'Location:'
              //                     .s(14)
              //                     .w(700)
              //                     .c(Color.fromRGBO(0, 0, 0, 1)),
              //
              //                 // DropdownMenu<String>(
              //                 //   expandedInsets: EdgeInsets.only(left: 10),
              //                 //   initialSelection: cubit.buildable.branchName,
              //                 //   onSelected: (value) {
              //                 //     cubit.changeBranchName(value ?? "");
              //                 //   },
              //                 //
              //                 //   menuStyle: MenuStyle(
              //                 //     backgroundColor: WidgetStatePropertyAll(
              //                 //       Colors.grey,
              //                 //     ),
              //                 //
              //                 //     shape: WidgetStatePropertyAll(
              //                 //       RoundedRectangleBorder(
              //                 //         borderRadius: BorderRadius.circular(6),
              //                 //       ),
              //                 //     ),
              //                 //   ),
              //                 //
              //                 //   dropdownMenuEntries: [
              //                 //     DropdownMenuEntry(value: 'one', label: 'One'),
              //                 //     DropdownMenuEntry(value: 'two', label: 'Two'),
              //                 //     DropdownMenuEntry(value: 'three', label: 'Three'),
              //                 //   ],
              //                 // ),
              //
              //                 HomeDropDown(
              //                   onchange: (String? value) {
              //                     cubit.changeBranchName(value ?? "");
              //                   },
              //                   hintText: state.branchName,
              //                 ),
              //               ],
              //             ),
              //           ),
              //         );
              //       },
              //     );
              //   },
              // );
            },
            child: Container(
              height: 36,
              width: 36,
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(4, 12, 12, 8),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(5),
                shadowColor: Colors.black.withOpacity(0.3),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(11, 7, 11, 7),
                  child: Assets.icons.location.svg(
                    colorFilter: ColorFilter.mode(
                      context.colors.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: 8,
            shrinkWrap: true,
            padding: EdgeInsets.fromLTRB(0, 12, 0, 8),
            itemBuilder: (BuildContext context, int index) {
              return PurchaseItem();
            },
            separatorBuilder:
                (BuildContext context, int index) => SizedBox(height: 12),
          ),
        ),
      ],
    );
  }
}
