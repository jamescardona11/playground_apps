import 'package:flutter/material.dart';

import 'color_theme.dart';
import 'text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme() {
    final appColorTheme = AppColorTheme();

    return ThemeData.light().copyWith(
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: AppTextTheme(appColorTheme),
      primaryColor: appColorTheme.primary,
      primaryColorLight: appColorTheme.primary,
      scaffoldBackgroundColor: appColorTheme.backgroundScaffold,
      extensions: <ThemeExtension<dynamic>>[appColorTheme],
      // elevatedButtonTheme:
    );
  }
}
