import 'package:flutter/material.dart';
import 'package:my_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:my_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:my_app/utils/theme/custom_themes/check_box_theme.dart';
import 'package:my_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:my_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:my_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:my_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:my_app/utils/theme/custom_themes/text_theme.dart';


class TAppTheme {
  TAppTheme._();

  static ThemeData LightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Color(0xFF1E3B8A),
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.LightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.LightElevatedButtonTheme,
    appBarTheme: TAppbarTheme.LightAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.LightBottomSheetTheme,
    checkboxTheme: TCheckBoxTheme.LightCheckBoxTheme,
    chipTheme: TChipTheme.LightChipTheme,
    inputDecorationTheme: TTextFieldTheme.LightInputDecorationTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.LightOutlinedButtonTheme,
  );
  static ThemeData DarkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Color(0xFF1E3B8A),
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.DarkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.DarkElevatedButtonTheme,
    appBarTheme: TAppbarTheme.DarkAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.DarkBottomSheetTheme,
    checkboxTheme: TCheckBoxTheme.DarkCheckBoxTheme,
    chipTheme: TChipTheme.DarkChipTheme,
    inputDecorationTheme: TTextFieldTheme.DarkInputDecorationTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.DarkOutlinedButtonTheme,
  );
}
