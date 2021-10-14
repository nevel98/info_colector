// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/material.dart';

class SigipColors {
  static const colorPrimaryStatusBarColor = Color(0xFF1975A8);
  static const colorPrimary = Color(0xFF091F92);
  static const colorSecondaryVariant = Color(0xFF0070B8);
  static const colorSecondary = Color(0xFF018786);
  static const colorControlHighlightButton = Color(0xFFB0D5F6);
  static const colorPrimaryTableRow = Color(0xFFBCD8EF);

  static const white = Color(0xFFFFFFFF);
  static const softgrey = Color(0xFF616161);
  static const grey = Color(0xFF303030);
  static const softblack = Color(0x73000000);
  static const black = Color(0xFF000000);

  static List<Color> blueGradients = [
    SigipColors.colorSecondaryVariant,
    SigipColors.colorPrimary,
    SigipColors.colorPrimaryStatusBarColor,
  ];
}

final lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(
      color: SigipColors.colorPrimary,
    ),
    backgroundColor: SigipColors.white,
  ),
  canvasColor: SigipColors.white,
  textTheme: const TextTheme(
    headline6: TextStyle(color: SigipColors.colorPrimary),
    bodyText2: TextStyle(color: SigipColors.colorPrimary),
    bodyText1: TextStyle(color: SigipColors.white),
  ),
  scaffoldBackgroundColor: SigipColors.white,
);

final darkTheme = ThemeData(
  textTheme: Typography().white,
  canvasColor: SigipColors.softgrey,
  popupMenuTheme: const PopupMenuThemeData(
    color: SigipColors.grey,
  ),
  scaffoldBackgroundColor: SigipColors.grey,
  appBarTheme: const AppBarTheme(
    color: SigipColors.softgrey,
  ),
  dialogTheme: const DialogTheme(backgroundColor: SigipColors.grey),
);
