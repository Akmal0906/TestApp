
import 'package:country_picker/country_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';

@freezed
class LoginBuildable with _$LoginBuildable {
  const factory LoginBuildable({
    @Default('uz') String language,
    @Default(false) bool hasFocus,
    @Default(false) bool fieldFocused,
    @Default(false) bool reSend,

    @Default(false) bool loading,
    @Default(false) bool resendloading,
    @Default(false) bool canSend,
    @Default(false) bool sameNumber,
    String? lastNumber,
    @Default("") String errorMessage,
    @Default("") String number,
    @Default("") String otp,
    @Default(0) int authIndex,
    Country? country,
    @Default(120) int timerSeconds,

  }) = _LoginBuildable;
}


@freezed
class LoginListenable with _$LoginListenable {
  const factory LoginListenable({LoginEffect? effect}) = _LoginListenable;
}

enum LoginEffect{otp,home}

