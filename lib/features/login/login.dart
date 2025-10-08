import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:whitelabel/common/base/base_page.dart';
import 'package:whitelabel/common/colors/static_colors.dart';
import 'package:whitelabel/common/constants.dart';
import 'package:whitelabel/common/extension/text_extension.dart';
import 'package:whitelabel/common/extension/theme_extension.dart';
import 'package:whitelabel/common/storage/app_storage.dart';
import 'package:whitelabel/features/login/cubit/login_cubit.dart';
import 'package:whitelabel/features/login/cubit/login_state.dart';
import 'package:whitelabel/features/login/widgets/login_widget.dart';
import 'package:whitelabel/features/login/widgets/otp.dart';
import '../../common/gen/assets.gen.dart';

class Login extends BasePage<LoginCubit, LoginBuildable, LoginListenable> {
  Login({super.key});

  final FocusNode _focusNode = FocusNode();
  TextEditingController controller = TextEditingController();

  @override
  void init(BuildContext context) {
    super.init(context);

    _focusNode.addListener(() {
      print('FOCUSNODE FOCUS ${_focusNode.hasFocus}');
      if (!_focusNode.hasFocus) {
        context.read<LoginCubit>().changeLanguageFocus(false);
        _focusNode.unfocus();
      } else {
        context.read<LoginCubit>().changeLanguageFocus(true);

        _focusNode.requestFocus();
      }
    });
  }

  @override
  void listener(BuildContext context, LoginListenable state) {
    super.listener(context, state);
    if(state.effect==LoginEffect.otp){
      context.read<LoginCubit>().changeLoginView(1);
    }else if(state.effect==LoginEffect.home){
      Storage.logged=true;
      context.go(Constants.home);
      print('Storage access token ${Storage.getAccessToken}');
      print('Storage refresh token ${Storage.getRefreshToken}');
    }
  }



  @override
  Widget builder(BuildContext context, LoginBuildable state) {
    final Size size = MediaQuery.sizeOf(context);
    final cubit = context.read<LoginCubit>();
    List<Widget> views = [
      LoginWidget(
        state: state,
        loading: state.loading,
        errorMessage: state.errorMessage,
        focusStatus: state.fieldFocused,
      ),
      Otp(
        state: state,
        loading: state.loading,
        errorMessage: state.errorMessage,
        number: state.number,
        controller: controller,
      )
    ];

    return Scaffold(
      backgroundColor: context.colors.primary,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ColoredBox(
              color: Colors.black,
              child: SizedBox(
                width: size.width,
                height:state.fieldFocused? size.height * 0.15:size.height*0.33,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Assets.icons.mainLogo.svg(),
                      SizedBox(height: 24),
                      "Be Super, and be Sport!"
                          .s(16)
                          .w(400)
                          .a(TextAlign.center)
                          .c(StaticColors.whieBg),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Positioned(
          //   top: 20,
          //   right: 20,
          //   child: Container(
          //     width: 100,
          //     height: 32,
          //     alignment: Alignment.center,
          //     //padding: EdgeInsets.fromLTRB(8, 2, 2, 8),
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(24),
          //       color: Colors.white,
          //     ),
          //     child: DropdownButtonHideUnderline(
          //       child: DropdownButton<String>(
          //         value: Storage.getLanguage,
          //         isDense: true,
          //         isExpanded: false,
          //         alignment: Alignment.center,
          //         dropdownColor: StaticColors.whieBg,
          //         underline: SizedBox(),
          //         padding: EdgeInsets.zero,
          //         // borderRadius: BorderRadius.circular(24),
          //         elevation: 0,
          //         icon: Padding(
          //           padding: const EdgeInsets.only(left: 8),
          //           child: Icon(Icons.keyboard_arrow_down),
          //         ),
          //         items: [
          //           DropdownMenuItem(
          //             value: 'uz',
          //             child: Row(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               crossAxisAlignment: CrossAxisAlignment.center,
          //               mainAxisSize: MainAxisSize.min,
          //               children: [
          //                 Assets.icons.uz.svg(),
          //                 SizedBox(width: 8),
          //                 Text('Uz'),
          //               ],
          //             ),
          //           ),
          //           DropdownMenuItem(
          //             value: 'ru',
          //             child: Row(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               crossAxisAlignment: CrossAxisAlignment.center,
          //               mainAxisSize: MainAxisSize.min,
          //               children: [
          //                 Assets.icons.ru.svg(),
          //                 SizedBox(width: 8),
          //
          //                 Text('Ru'),
          //               ],
          //             ),
          //           ),
          //           DropdownMenuItem(
          //             value: 'en',
          //             child: Row(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               crossAxisAlignment: CrossAxisAlignment.center,
          //               mainAxisSize: MainAxisSize.min,
          //               children: [
          //                 Assets.icons.en.svg(),
          //                 SizedBox(width: 8),
          //
          //                 Text('En'),
          //               ],
          //             ),
          //           ),
          //         ],
          //         onChanged: (String? value) {
          //           cubit.changeLanguage(value ?? 'uz');
          //         },
          //       ),
          //     ),
          //   ),
          // ),
          Positioned(
            top: 100,
            right: 20,
            child: Focus(
              focusNode: _focusNode,
              child: GestureDetector(
                onTapDown: (details) async {
                  _focusNode.requestFocus();
                  cubit.changeLanguageFocus(true);
                  final screenPos = details.globalPosition;
                  final value = await showMenu<String>(
                    context: context,
                    position: RelativeRect.fromLTRB(
                      screenPos.dx, // Left
                      132, // Top
                      20,
                      screenPos.dy + 1,
                    ),
                    items: [
                      PopupMenuItem(
                        value: 'uz',
                        padding: EdgeInsets.zero,
                        child: Container(
                          width: double.infinity,
                         // height: 56,
                          // padding: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Assets.icons.uz.svg(),
                              SizedBox(width: 8),
                              Text('Uz'),
                            ],
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        value: 'ru',
                        padding: EdgeInsets.zero,

                        child: Container(
                          width: double.infinity,
                         // height: 56,
                          // padding: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Assets.icons.ru.svg(),
                              SizedBox(width: 8),
                              Text('Ru'),
                            ],
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        value: 'en',
                        padding: EdgeInsets.zero,

                        child: Container(
                          width: double.infinity,
                          //height: 56,
                          // padding: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Assets.icons.en.svg(),
                              SizedBox(width: 8),
                              Text('En'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                  if (value != null) {
                    cubit.changeLanguage(value);
                    // cubit.changeLanguageFocus(false);
                  }
                },
                child: Container(
                  height: 32,
                  width: 110,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      getLanngage(Storage.getLanguage),
                      !state.hasFocus
                          ? Icon(Icons.keyboard_arrow_up)
                          : Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Positioned(
          //   top: 140,
          //     right: 40,
          //     child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         InkWell(
          //           onTap: (){
          //             _focusNode.requestFocus();
          //             cubit.changeLanguageFocus(true);
          //           },
          //           child: Container(
          //             height: 32,
          //             width: 110,
          //             alignment: Alignment.center,
          //             //padding: EdgeInsets.symmetric(horizontal: 4),
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(8),
          //               color: Colors.white,
          //             ),
          //             child: Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               mainAxisSize: MainAxisSize.max,
          //               children: [
          //                 getLanngage(Storage.getLanguage),
          //                 !state.hasFocus
          //                     ? Icon(Icons.keyboard_arrow_up)
          //                     : Icon(Icons.keyboard_arrow_down),
          //               ],
          //             ),
          //           ),
          //         ),
          //         Visibility(
          //             visible: state.hasFocus,
          //
          //             child: Container(
          //               width: 108,
          //            padding: EdgeInsets.fromLTRB(12,8, 12, 8),
          //           decoration: BoxDecoration(
          //             color: Colors.yellow,
          //             borderRadius: BorderRadius.circular(4)
          //           ),
          //           child: Column(
          //             mainAxisSize: MainAxisSize.max,
          //             children: [
          //             Row(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             crossAxisAlignment: CrossAxisAlignment.center,
          //             mainAxisSize: MainAxisSize.max,
          //             children: [Assets.icons.uz.svg(), SizedBox(width: 8), Text('Uz')],
          //           ),
          //               SizedBox(height: 8,),
          //
          //               Row(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 crossAxisAlignment: CrossAxisAlignment.center,
          //                 mainAxisSize: MainAxisSize.max,
          //                 children: [Assets.icons.en.svg(), SizedBox(width: 8), Text('En')],
          //               ),
          //               SizedBox(height: 8,),
          //
          //               Row(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 crossAxisAlignment: CrossAxisAlignment.center,
          //                 mainAxisSize: MainAxisSize.max,
          //                 children: [Assets.icons.uz.svg(), SizedBox(width: 8), Text('Uz')],
          //               )
          //             ],
          //           ),
          //         )),
          //       ],
          // ),),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: state.fieldFocused ? size.height * 0.85 : size.height * 0.67,
              padding: const EdgeInsets.only(top: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
              ),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: views.sublist(0, 2)[state.authIndex],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getLanngage(String language) {
    switch (language) {
      case 'uz':
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [Assets.icons.uz.svg(), SizedBox(width: 8), Text('Uz')],
        );
        break;
      case 'ru':
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [Assets.icons.ru.svg(), SizedBox(width: 8), Text('Ru')],
        );
        break;
      case 'en':
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [Assets.icons.en.svg(), SizedBox(width: 8), Text('En')],
        );
        break;
      default:
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [Assets.icons.uz.svg(), SizedBox(width: 8), Text('Uz')],
        );
    }
  }
}
