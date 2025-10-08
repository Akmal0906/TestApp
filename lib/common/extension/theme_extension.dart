import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whitelabel/common/colors/light_theme.dart';

import '../colors/static_colors.dart';

extension ColorExtension on BuildContext {
  LightThemeColors get colors {
    Theme.of(this).brightness;
    return LightThemeColors();
  }

  ThemeData get darkTheme => ThemeData(
    fontFamily: 'Muller',
    scaffoldBackgroundColor: StaticColors.nero,
  );

  ThemeData get lightTheme => ThemeData(
    fontFamily: 'Muller',
    scaffoldBackgroundColor: StaticColors.white,
  );
}
