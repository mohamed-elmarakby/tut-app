import 'package:flutter/material.dart';
import 'font_manager.dart';

TextStyle _getTextStyle(
        {double? fontSize,
        String? fontFamily,
        FontWeight? fontWeight,
        Color? color}) =>
    TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
    );

//light style
TextStyle getLightStyle(
        {double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.familyName,
      fontWeight: FontWeightManager.light,
      color: color,
    );

//regular style
TextStyle getRegularStyle(
        {double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.familyName,
      fontWeight: FontWeightManager.regular,
      color: color,
    );

//medium style
TextStyle getMediumStyle(
        {double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.familyName,
      fontWeight: FontWeightManager.medium,
      color: color,
    );

//semiBold style
TextStyle getSemiBoldStyle(
        {double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.familyName,
      fontWeight: FontWeightManager.semiBold,
      color: color,
    );

//bold style
TextStyle getBoldStyle(
        {double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.familyName,
      fontWeight: FontWeightManager.bold,
      color: color,
    );
