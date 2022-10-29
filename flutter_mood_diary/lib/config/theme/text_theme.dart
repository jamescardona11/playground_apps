import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_theme.dart';

class AppTextTheme extends TextTheme {
  AppTextTheme(AppColorTheme colorTheme)
      : super(
          headline1: GoogleFonts.pangolin(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.5,
            color: colorTheme.textColorForPrimary,
          ),
          headline2: GoogleFonts.notoSans(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: colorTheme.textColorForPrimary,
          ),
          bodyText1: GoogleFonts.firaSans(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: colorTheme.textColorForPrimary,
          ),
          bodyText2: GoogleFonts.firaSans(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: colorTheme.textColorForPrimary,
          ),
        );
}
