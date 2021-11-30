import 'package:flutter/material.dart';
import 'color_manager.dart';
import 'font_manager.dart';
import 'style_manager.dart';
import 'value_manager.dart';

ThemeData getApplicationThemeData() {
  return ThemeData(
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryWithOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    splashColor: ColorManager.primaryWithOpacity70,
    disabledColor: ColorManager.grey1,
    // accentColor: ColorManager.grey,
    colorScheme: ColorScheme(
      primary: ColorManager.primary,
      onPrimary: ColorManager.primaryWithOpacity70,
      primaryVariant: ColorManager.primaryWithOpacity70,
      background: ColorManager.white,
      onBackground: ColorManager.black,
      secondary: ColorManager.grey,
      onSecondary: ColorManager.white,
      secondaryVariant: ColorManager.darkPrimary,
      error: ColorManager.error,
      onError: ColorManager.white,
      surface: ColorManager.white,
      onSurface: ColorManager.black,
      brightness: Brightness.light,
    ),
    cardTheme: CardTheme(
      clipBehavior: Clip.antiAlias,
      elevation: AppSize.s4,
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryWithOpacity70,
      titleTextStyle: getRegularStyle(
        color: ColorManager.white,
        fontSize: 16,
      ),
    ),
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      buttonColor: ColorManager.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
          color: ColorManager.white,
        ),
        primary: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppSize.s12,
          ),
        ),
      ),
    ),
    textTheme: TextTheme(
      headline1: getSemiBoldStyle(
        color: ColorManager.darkGrey,
        fontSize: FontSize.s16,
      ),
      subtitle1: getMediumStyle(
        color: ColorManager.lightGrey,
        fontSize: FontSize.s14,
      ),
      caption: getRegularStyle(
        color: ColorManager.grey1,
      ),
      bodyText1: getRegularStyle(
        color: ColorManager.grey,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(
        AppPadding.p8,
      ),
      hintStyle: getRegularStyle(
        color: ColorManager.grey1,
      ),
      labelStyle: getMediumStyle(
        color: ColorManager.darkGrey,
      ),
      errorStyle: getRegularStyle(
        color: ColorManager.error,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.grey,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.error,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),
    ),
  );
}
