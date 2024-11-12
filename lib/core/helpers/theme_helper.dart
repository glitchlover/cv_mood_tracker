import 'package:cv_mood_tracker/core/helpers/style_helper.dart';
import 'package:flutter/material.dart';
import 'color_helper.dart';

class ThemeHelper {
  static ThemeData get commonTheme => ThemeData(
      fontFamily: 'Poppins',
      useMaterial3: true,
      colorSchemeSeed: ColorHelper.primaryColor,
      scaffoldBackgroundColor: ColorHelper.backgroundColor,
      textTheme: const TextTheme(
        headlineLarge: StyleHelper.titleStyleBold,
        bodyLarge: StyleHelper.textStyleLargeNormal,
        bodyMedium: StyleHelper.textStyleMediumNormal,
        bodySmall: StyleHelper.textStyleSmallNormal,
      ),
      cardTheme: CardTheme(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: ColorHelper.backgroundColor,
        elevation: 0,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 2,
        selectedLabelStyle: StyleHelper.textStyleSmallNormal,
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        elevation: 0,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        color: ColorHelper.secondaryBackgroundColor,
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        elevation: 0,
        shape: CircleBorder(),
        backgroundColor: ColorHelper.primaryColor,
        foregroundColor: ColorHelper.buttonTextColor
      ),
      iconTheme: const IconThemeData(
        color: ColorHelper.iconColor,
        size: 24,
      ),
      scrollbarTheme: const ScrollbarThemeData(
        thumbColor: WidgetStatePropertyAll(Colors.transparent),
      ),
      iconButtonTheme: const IconButtonThemeData(
        style: ButtonStyle(
          elevation: WidgetStatePropertyAll(0),
          shape: WidgetStatePropertyAll(CircleBorder()),
          fixedSize: WidgetStatePropertyAll(Size.fromHeight(20))
        ),
      ));
}
