import 'package:country_picker/country_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whitelabel/common/extension/text_extension.dart';
import 'package:whitelabel/common/extension/theme_extension.dart';
import '../../../common/common_widgets/common_button.dart';
import '../../../common/country_codes.dart';
import '../../../common/gen/assets.gen.dart';
import '../cubit/login_cubit.dart';
import '../cubit/login_state.dart';
import 'auth_error_box.dart';


class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key,  required this.errorMessage,
    required this.focusStatus,
    required this.loading,
    required this.state,});

  final String errorMessage;
  final bool focusStatus;
  final bool loading;
  final LoginBuildable state;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();

    return ListView(
      children: [
        AnimatedOpacity(
          opacity: focusStatus ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 100),
          child: Assets.icons.mainLogo.svg(),
        ),
        const SizedBox(height: 32),
        Center(child: "sign.signin".tr().s(20).w(700)),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: "sign.subsignin".tr().s(14).w(400).a(TextAlign.center),
        ),
        const SizedBox(height: 32),
        if (errorMessage.isNotEmpty) AuthErrorBox(message: errorMessage.tr()),
        CustomPhoneNumberField(
          maxNumber: countryPhoneLengths[state.country?.countryCode] ?? 9,
          testString: state.number,
          country: state.country,
          onCountryChanged: (country) {
            cubit.setCountry(country: country);
          },
          onChanged: (value) {
            if (state.country?.countryCode == null) {
              if (value.replaceAll(' ', '').length == 9) {
                if (value.replaceAll(' ', '') == state.lastNumber) {
                  cubit.setSameNumber(true);
                }
                cubit.setCanSend(true);
              }
              if (value.replaceAll(' ', '').length != 9) {
                cubit.setCanSend(false);
                cubit.setSameNumber(false);
              }
              cubit.setNumber(value.replaceAll(" ", ""));
              if (value.replaceAll(" ", "").length < 9) {
                cubit.checkNumber("");
              }
            }

            if (state.country?.countryCode == 'UZ') {
              if (value.replaceAll(' ', '').length == 9) {
                if (value.replaceAll(' ', '') == state.lastNumber) {
                  cubit.setSameNumber(true);
                }
                cubit.setCanSend(true);
              }
              if (value.replaceAll(' ', '').length != 9) {
                cubit.setCanSend(false);
                cubit.setSameNumber(false);
              }
              cubit.setNumber(value.replaceAll(" ", ""));
              if (value.replaceAll(" ", "").length < 9) {
                cubit.checkNumber("");
              }
            }
            if (state.country != null) {
              int minLength =
                  countryPhoneLengths[state.country?.countryCode] ?? 8;

              if (value.replaceAll(' ', '').length >= minLength) {
                if (value.replaceAll(' ', '') == state.lastNumber) {
                  cubit.setSameNumber(true);
                }
                cubit.setCanSend(true);
              }
              if (value.replaceAll(' ', '').length < minLength) {
                cubit.setCanSend(false);
                cubit.setSameNumber(false);
              }
              cubit.setNumber(value.replaceAll(" ", ""));
              if (value.replaceAll(" ", "").length < minLength) {
                cubit.checkNumber("");
              }
            }
          },
          onFocused: (value) {
            cubit.focusListener(value);
          },
        ),
        const SizedBox(height: 40),
        CommonButton(
          titleWeight: 700,
          onTap: () {
            FocusScope.of(context).unfocus();
            print('SAME NUMBER ${state.sameNumber} CAN SEND ${state.canSend}');

            if (state.canSend && state.sameNumber) {
              cubit.changeLoginView(1);
            }
            if (state.canSend && state.sameNumber == false) {
               cubit.login1();
               //cubit.changeLoginView(1);
             }

            //
            // if(state.sameNumber==false){
            //   cubit.login1();
            //   cubit.changeLoginView(1);
            // }else{
            //   cubit.changeLoginView(1);
            // }


          },
          loading: loading,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          background: state.canSend
              ? context.colors.primary
              : context.colors.loginButton,
          title: "sign.next".tr(),
          titleColor: context.colors.white,
        ),
        const SizedBox(height: 33),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            "Powered By".s(14).w(500),
            const SizedBox(width: 12),
            Assets.icons.subLogo.svg(),
          ],
        ),
      ],
    );
  }
}



class CustomPhoneNumberField extends StatefulWidget {
  const CustomPhoneNumberField({
    super.key,
    required this.onFocused,
    required this.onChanged,
    required this.testString,
    required this.onCountryChanged,
    required this.country,
    required this.maxNumber,
  });

  final Function(bool value) onFocused;
  final Function(String value) onChanged;
  final Function(Country value) onCountryChanged;
  final String testString;
  final Country? country;
  final int maxNumber;

  @override
  _CustomPhoneNumberFieldState createState() => _CustomPhoneNumberFieldState();
}

class _CustomPhoneNumberFieldState extends State<CustomPhoneNumberField> {
  final String _hint = "-- --- -- --";
  final FocusNode _focusNode = FocusNode();

  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.text = widget.testString;
    _focusNode.addListener(() {
      widget.onFocused(_focusNode.hasFocus);
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String phoneCode =
        "${widget.country?.flagEmoji ?? "🇺🇿"} +${widget.country?.phoneCode ?? "998"}";
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: context.colors.hintColor),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                onTap: () {
                  showCountryPicker(
                    context: context,
                    exclude: <String>['KN', 'MF'],
                    favorite: <String>['UZ', 'KG', 'KZ', 'RU', 'US', 'GB'],
                    //Optional. Shows phone code before the country name.
                    showPhoneCode: true,
                    onSelect: (Country country) {
                      controller.text = '';
                      widget.onCountryChanged(country);
                    },
                    moveAlongWithKeyboard: false,
                    countryListTheme: CountryListThemeData(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                      inputDecoration: InputDecoration(
                        labelText: 'sing.search'.tr(),
                        hintText: 'sing.search_hint'.tr(),
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            color: const Color(0xFF8C98A8).withOpacity(0.2),
                          ),
                        ),
                      ),
                      searchTextStyle: const TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                      ),
                    ),
                  );
                },
                child: phoneCode.s(16).w(400),
              ),
            ),
            VerticalDivider(
              color: context.colors.hintColor,
              thickness: 1,
            ),
            Expanded(
              child: TextField(
                controller: controller,
                focusNode: _focusNode,
                keyboardType: TextInputType.number,
                onChanged: (value) => widget.onChanged(value),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  if (widget.country?.countryCode == "UZ" ||
                      widget.country == null)
                    LengthLimitingTextInputFormatter(widget.maxNumber),
                  _PhoneNumberFormatter(),
                ],
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: _hint,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue,
      ) {
    String digits = newValue.text.replaceAll(' ', '');

    if (digits.length > 12) {
      digits = digits.substring(0, 12);
    }

    String formatted = '';
    for (int i = 0; i < digits.length; i++) {
      if (i == 2 || i == 5 || i == 7) {
        formatted += ' ';
      }
      formatted += digits[i];
    }

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}