import 'package:flutter/material.dart';
import 'package:test_gura1/utility/theme/Custom_theme/text_theme.dart';
import 'package:test_gura1/utility/theme/Custom_theme/elevated_button_Theme.dart';
import 'package:test_gura1/utility/theme/Custom_theme/bottom_sheet_theme.dart';
import 'package:test_gura1/utility/theme/Custom_theme/checkbox_theme.dart';
import 'package:test_gura1/utility/theme/Custom_theme/text_field_theme.dart';
import 'package:test_gura1/utility/theme/Custom_theme/textTheme.dart';
import 'package:test_gura1/utility/theme/Custom_theme/appbar_theme.dart';

class TAppTheme{
  TAppTheme._();
  static ThemeData lightTheme=ThemeData(
   useMaterial3: true ,
    fontFamily: 'poppins',
    brightness: Brightness.light,
    primaryColorDark: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme:TEleveteButonTheme.lightElevetadButtonTheme,
    textTheme: TTextTheme.lightTheme,
    appBarTheme:TAppbar.lightAppbarTheme,
    bottomSheetTheme:TBottomsheettheme.lightBotttomSheetTheme,
    inputDecorationTheme: TextFormFieldTheme.lightInputDecorationTheme,
    checkboxTheme:TCheckboxTheme.lightCheckboxTheme);



    static ThemeData darkTheme=ThemeData(
    useMaterial3: true ,
    fontFamily: 'poppins',
    brightness: Brightness.dark,
    primaryColorDark: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    elevatedButtonTheme:TEleveteButonTheme.darkElevetadButtonTheme,
    textTheme: TTextTheme.darkTheme,
    appBarTheme:TAppbar.darktAppbarTheme,
    bottomSheetTheme:TBottomsheettheme.darkBotttomSheetTheme,
    inputDecorationTheme: TextFormFieldTheme.darkaInputDecorationTheme,
    checkboxTheme:TCheckboxTheme.darkCheckboxTheme,





    );

}