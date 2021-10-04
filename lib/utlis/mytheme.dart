import 'package:flutter/material.dart';

import 'mycolors.dart';

class MyTheme {
  ThemeData defaultTheme = ThemeData(
    // Colors theme config
    primaryColor: Mycolors.primaryColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    // colorScheme: ColorScheme.light(),
    fontFamily: 'Nunito_Sans',
    // Text theme config
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: Mycolors.darkTextColor,
      ),
      headline2: TextStyle(
        fontSize: 23.0,
        fontWeight: FontWeight.bold,
        color: Mycolors.darkTextColor,
      ),
      headline3: TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
        color: Mycolors.darkTextColor,
      ),
      headline4: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Mycolors.darkTextColor,
      ),
      bodyText1: TextStyle(
        fontSize: 10.0,
      ),
    ),
  );
}
