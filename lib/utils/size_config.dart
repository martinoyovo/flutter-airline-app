import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData = MediaQueryData();
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Obtenez la hauteur proportionnée selon la taille de l'écran
double getProportionateScreenHeight(double inputHeight) {
  double? screenHeight = SizeConfig.screenHeight;
  //812 est la hauteur de mise en page utilisée par le concepteur
  return (inputHeight / 812.0) * screenHeight!;
}

// Obtenez la largeur proportionnée selon la taille de l'écran
double getProportionateScreenWidth(double inputWidth) {
  double? screenWidth = SizeConfig.screenWidth;
  //375 est la largeur de mise en page utilisée par le concepteur
  return (inputWidth / 375.0) * screenWidth!;
}