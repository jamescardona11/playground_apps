import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors_theme_extension.dart';

/* Tested Fonts before
    - notoSans
    - fira
    - pangolin
    - fugazOne
*/
class AppTextTheme extends TextTheme {
  AppTextTheme(AppColors colorTheme)
      : super(
          headline1: GoogleFonts.pangolin(
            fontSize: 26,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.5,
            color: colorTheme.textColorPrimary,
          ),
          headline2: GoogleFonts.pangolin(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: colorTheme.textColorSecondary,
          ),
          bodyText1: GoogleFonts.firaSans(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: colorTheme.textColorPrimary,
          ),
          bodyText2: GoogleFonts.firaSans(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: colorTheme.textColorPrimary,
          ),
        );
}
