import 'package:whitelabel/common/common_widgets/common_button.dart';
import 'package:whitelabel/common/extension/text_extension.dart';
import 'package:whitelabel/common/extension/theme_extension.dart';
import 'package:whitelabel/common/gen/assets.gen.dart';
import 'package:whitelabel/features/login/cubit/login_cubit.dart';
import 'package:whitelabel/features/login/cubit/login_state.dart';
import 'package:whitelabel/features/login/widgets/auth_error_box.dart';
import 'package:whitelabel/features/login/widgets/timer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/services.dart';

class Otp extends StatelessWidget {
  const Otp({
    super.key,
    required this.errorMessage,
    required this.controller,
    required this.number,
    required this.loading,
    required this.state,
  });

  final LoginBuildable state;
  final String errorMessage;
  final String number;
  final bool loading;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    return ListView(
      children: [
        Assets.icons.mainLogo.svg(height: 34,color: context.colors.primary),
        const SizedBox(height: 24),
        Center(child: "sign.entercode".tr().s(20).w(700)),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 69),
          child: Text.rich(
            TextSpan(
              text: "sign.smscode".tr(),
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              children: [
                TextSpan(
                  text: " +${state.country?.phoneCode ?? "998"} $number",
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 32),
        if (errorMessage.isNotEmpty) AuthErrorBox(message: errorMessage.tr()),
        if (errorMessage.isNotEmpty) const SizedBox(height: 16),
        OtpField(
          hasError: state.errorMessage.isNotEmpty,
          onFocused: (value) => cubit.focusListener(value),
          onChanged: (value) {
            cubit.setOtp(value.replaceAll(" ", ""));
            if (value.replaceAll(" ", "").length < 6) {
              cubit.checkOtp("");
            }
            if (value.replaceAll(" ", "").length == 6) {
              cubit.setCanSend(true);
            }
            if (value.replaceAll(" ", "").length != 6) {
              cubit.setCanSend(false);
            }
          },
          controller: controller,
        ),
        const SizedBox(height: 20),
        Visibility(
          visible: !state.reSend,
          child: Center(
            child: TimerWidget(
                setTimer: (seconds) {
                  cubit.setSeconds(seconds);
                },
                seconds: state.timerSeconds,
                onTimerEnd: () {
                  cubit.setResend(true);
                }),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        if (state.country?.countryCode != null &&
            state.country?.countryCode != 'UZ')
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: FittedBox(
              child: styleTextWithWeight(
                "sing.whatsapp".tr(),
                'WhatsApp',
                context.colors.primary,
              ),
            ),
          ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            const Spacer(),
            Assets.icons.anotherNumber.svg(color: const Color(0xff242424)),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                cubit.changeLoginView(0);
                cubit.setErrorMessage('');
                cubit.setCanSend(true);
                cubit.setSameNumber(true);
                // cubit.setSeconds(seconds);
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 35),
                child: "sing.changeNumber"
                    .tr()
                    .s(12)
                    .c(
                      const Color(0xff442e2e),
                    )
                    .w(700),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        CommonButton(
          titleWeight: 700,
          onTap: () {
            // if (state.canSend) {
            //   cubit.checkOtp(null);
            // }
            cubit.otp1(state.otp);
          },
          loading: state.loading,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          background: state.canSend
              ? context.colors.primary
              : context.colors.loginButton,
          title: "sign.next".tr(),
          titleColor: context.colors.white,
        ),
        const SizedBox(
          height: 16,
        ),
        if (state.reSend)
          CommonButton(
            onTap: () {
              cubit.resendlogin();
              cubit.setSeconds(120);
            },
            loading: state.resendloading,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            background: context.colors.loginButton,
            title: "sing.resend".tr(),
            titleColor: context.colors.otpBorder,
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

Widget styleTextWithWeight(String input, String targetWord, Color color) {
  return Text.rich(
    TextSpan(
      children: input.split(' ').map((word) {
        return TextSpan(
          text: '$word ',
          style: TextStyle(
            fontWeight:
                word.contains(targetWord) ? FontWeight.w700 : FontWeight.w400,
            color: color,
          ),
        );
      }).toList(),
    ),
  );
}

class OtpField extends StatefulWidget {
  const OtpField({
    super.key,
    required this.onFocused,
    required this.onChanged,
    required this.controller,
    this.hasError = false,
  });

  final bool hasError;
  final Function(bool value) onFocused;
  final Function(String value) onChanged;
  final TextEditingController controller;

  @override
  State<OtpField> createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> with CodeAutoFill {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      widget.onFocused(_focusNode.hasFocus);
    });
    listenForCode();

    SmsAutoFill().getAppSignature.then((signature) async {
      await Clipboard.setData(ClipboardData(text: signature));
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
    cancel();
  }

  @override
  void codeUpdated() {
    if (code != null) {
      widget.controller.text = code!;
      widget.onChanged(code!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Pinput(
      controller: widget.controller,
      length: 6,
      errorText: widget.hasError ? "invalid_Otp".tr() : null,
      focusNode: _focusNode,
      onChanged: (value) {
        print(value);
        widget.onChanged(value);
      },
      submittedPinTheme: !widget.hasError
          ? pinPutThemes(
              backColor: context.colors.white,
              borderColor: widget.controller.length == 6
                  ? context.colors.otpBorder
                  : context.colors.otpBorder,
            )
          : pinPutThemes(
              backColor: context.colors.white,
              borderColor:const Color(0xffFF4747),
            ),
      focusedPinTheme: pinPutThemes(
        backColor: context.colors.white,
        borderColor: context.colors.otpBorder,
        width: 1.0,
      ),
      defaultPinTheme: !widget.hasError
          ? pinPutThemes(
              backColor: context.colors.white,
              borderColor: const Color(0xff9CA3AF),
            )
          : pinPutThemes(
              backColor: context.colors.white,
              borderColor: const Color(0xffFF4747),
            ),
    );
  }
}

PinTheme pinPutThemes({
  required Color backColor,
  required Color borderColor,
  double width = 1.0,
}) {
  return PinTheme(
    height: 44,
    width: 44,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: backColor,
      border: Border.all(color: borderColor, width: width),
    ),
    textStyle: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
  );
}
