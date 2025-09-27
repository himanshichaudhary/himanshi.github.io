import 'package:flutter/material.dart';

const fontFamily = 'Poppins';

final themeLight = ThemeData(
  primaryColorLight: const Color(0xffC0392B),
  brightness: Brightness.light,
  primaryColor: const Color(0xff1aaecf),
  highlightColor: Colors.black, //e0edf5
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  splashColor: Colors.transparent,
  drawerTheme: DrawerThemeData(backgroundColor: Colors.white),
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(
    secondary: Colors.black,
    brightness: Brightness.light,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xff222222),
    iconTheme: IconThemeData(color: Colors.white), // applies globally
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
  ),
);

final themeDark = ThemeData(
  brightness: Brightness.dark,
  primaryColorDark: const Color(0xffc43828),
  primaryColor: const Color(0xff01396b),
  highlightColor: const Color(0xffC0392B),
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  splashColor: Colors.transparent,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xff222222),
    iconTheme: IconThemeData(color: Colors.white), // applies globally
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
  ),
  // scaffoldBackgroundColor:const Color(0xffdfcfc8),
  // scaffoldBackgroundColor:const Color(0xffe5e2e2), //f7b9bb ,  blue -084b89
  // scaffoldBackgroundColor:const Color(0xff0281b0), // ,  blue -0591c7
  scaffoldBackgroundColor: const Color(0xff222222), //f7b9bb ,  blue -084b89
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.red,
    brightness: Brightness.dark,
  ).copyWith(
    secondary: const Color(0xffC0392B),
    onPrimary: Colors.white, // icons/text on primary surfaces
  ),
);
