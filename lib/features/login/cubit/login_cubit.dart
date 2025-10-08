import 'package:country_picker/country_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:whitelabel/common/base/base_cubit.dart';
import 'package:whitelabel/common/storage/app_storage.dart';
import 'package:whitelabel/features/login/cubit/login_state.dart';
import '../../../common/country_codes.dart';
import '../../../domain/repository/login_repo.dart';

@injectable
class LoginCubit extends BaseCubit<LoginBuildable, LoginListenable> {
  LoginCubit(this._repository) : super(const LoginBuildable());
  final LoginRepository _repository;

  changeLanguage(String language) {
    Storage.setLanguage = language;
    build((buildable) => buildable.copyWith(language: language));
  }

  void focusListener(bool value) =>
      build((buildable) => buildable.copyWith(fieldFocused: value));

  changeLanguageFocus(bool value) {
    build((buildable) => buildable.copyWith(hasFocus: value));
  }

  void setSeconds(int seconds) =>
      build((buildable) => buildable.copyWith(timerSeconds: seconds));

  void setErrorMessage(String error) =>
      build((buildable) => buildable.copyWith(errorMessage: error));

  void setNumber(String number) =>
      build((buildable) => buildable.copyWith(number: number));

  void setOtp(String value) =>
      build((buildable) => buildable.copyWith(otp: value));

  void setSameNumber(bool value) =>
      build((buildable) => buildable.copyWith(sameNumber: value));

  void setCanSend(bool value) =>
      build((buildable) => buildable.copyWith(canSend: value));

  void changeLoginView(int value) => build(
    (buildable) => buildable.copyWith(authIndex: value, canSend: false),
  );

  void setResend(bool value) =>
      build((buildable) => buildable.copyWith(reSend: value));

  void checkNumber(String? value) {
    final requiredLength =
        countryPhoneLengths[buildable.country?.countryCode] ?? 9;

    if (buildable.number.length < requiredLength) {
      build(
        (buildable) => buildable.copyWith(
          errorMessage: value ?? "Raqamni to'liq kiriting",
        ),
      );
    } else {
      login1();
    }
  }

  // void login() => callable(
  //   future: _repository.login(
  //     phone: buildable.number,
  //     country: buildable.country,
  //   ),
  //   buildOnStart: () {
  //     return buildable.copyWith(loading: true, reSend: false, otp: '');
  //   },
  //   buildOnError: (e) => buildable.copyWith(loading: false, errorMessage: e),
  //   buildOnDone:
  //       () => buildable.copyWith(
  //         loading: false,
  //         lastNumber: buildable.number,
  //         timerSeconds: 120,
  //       ),
  //   invokeOnData: (data) => const LoginListenable(effect: LoginEffect.otp),
  // );

  Future<void> login1() {
    print('LOGIN 1 ISHLAVOTII');
    return callable(
      future: _repository.login(
        phone: buildable.number,
        country: buildable.country,
      ),
      buildOnStart: () => buildable.copyWith(loading: true, canSend: false),
      buildOnDone:
          () => buildable.copyWith(
            loading: false,
            lastNumber: buildable.number,
            timerSeconds: 120,
          ),
      invokeOnData: (data) => LoginListenable(effect: LoginEffect.otp),
      buildOnError: (e) => buildable.copyWith(loading: false, canSend: false),
    );
  }

  void resendlogin() => callable(
    future: _repository.login(
      phone: buildable.number,
      country: buildable.country,
    ),
    buildOnStart: () => buildable.copyWith(resendloading: true),
    buildOnError:
        (e) => buildable.copyWith(resendloading: false, errorMessage: e),
    buildOnDone:
        () => buildable.copyWith(
          resendloading: false,
          lastNumber: buildable.number,
          reSend: false,
          otp: '',
          errorMessage: '',
        ),
    invokeOnData: (data) => const LoginListenable(effect: LoginEffect.otp),
  );

  Future<void> otp1(String code) {
    return callable(
      future: _repository.otp(
        phone: buildable.number,
        code: int.parse(code),
        country: buildable.country,
      ),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnDone: () => buildable.copyWith(loading: false),
      invokeOnData: (data) => LoginListenable(effect: LoginEffect.home),
      buildOnError:
          (error) => buildable.copyWith(
            errorMessage: error.toString(),
            loading: false,
          ),
    );
  }

  void checkOtp(String? value) {
    if (buildable.otp.length < 6) {
      build(
        (buildable) =>
            buildable.copyWith(errorMessage: value ?? "Kodni to'liq kiriting!"),
      );
    } else {
      //otp();
    }
  }

  // void otp() => callable(
  //   future: _repository.otp(
  //     country: buildable.country,
  //     phone: buildable.number,
  //     code: int.parse(buildable.otp),
  //   ),
  //   buildOnStart: () => buildable.copyWith(loading: true),
  //   buildOnError: (e) =>
  //       buildable.copyWith(loading: false, errorMessage: e),
  //   buildOnDone: () {
  //     return buildable.copyWith(loading: false);
  //   },
  //   invokeOnData: (data) => const LoginListenable(effect: LoginEffect.home),
  // );

  void setCountry({required Country country}) => build(
    (buildable) => buildable.copyWith(
      country: country,
      number: '',
      canSend: false,
      timerSeconds: 120,
      errorMessage: '',
    ),
  );
}
