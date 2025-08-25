import 'package:flutter/material.dart';
import 'package:test_gura1/utility/theme/Custom_theme/text_theme.dart';

class TAppTheme{
  TAppTheme._();
  static ThemeData lightTheme=ThemeData(
   useMaterial3: true ,
    fontFamily: 'poppins',
brightness: Brightness.light,
    primaryColorDark: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTheme,
    elevatedButtonTheme: TEleveteButonTheme.lightElevetadButtonTheme,

    )

  );
  static ThemeData Dark= ThemeData(
    useMaterial3: true ,
    fontFamily: 'poppins',
    brightness: Brightness.dark,
    primaryColorDark: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTheme,
    elevatedButtonTheme: TEleveteButonTheme.darkElevetadButtonTheme,
  );
}