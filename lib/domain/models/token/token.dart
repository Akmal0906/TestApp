import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';

part 'token.g.dart';

@freezed
class Token with _$Token {
  const Token._();

  const factory Token(
    String access,
    String refresh,
  ) = _Token;

  static Token? from(List<String>? cookies) {
    if (cookies == null) return null;
    final access = cookies.getOrNull('access');
    if (access == null) return null;
    final refresh = cookies.getOrNull('refresh');
    if (refresh == null) return null;
    return Token(access, refresh);
  }

  String get cookie =>
      'access=$access;refresh=$refresh';

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}

extension CookieExtensions on List<String> {
  String? getOrNull(String key) =>
      firstWhereOrNull((element) => element.startsWith(key))
          ?.split(';')
          .firstOrNull
          ?.replaceAll('$key=', '');
}
