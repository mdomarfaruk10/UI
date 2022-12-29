
import 'dart:ui';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webcoderit/utils/color.dart';

class AppStyle{
  static TextStyle HeadingTxtStyle = GoogleFonts.lato(
      color: AppColors.textColor, fontWeight: FontWeight.normal, fontSize: 40.0);

  static TextStyle buttonTxtStyle = GoogleFonts.lato(
      color: AppColors.btnTxtColor, fontWeight: FontWeight.bold, fontSize: 20.0);

  static TextStyle inputHintTxtStyle = GoogleFonts.lato(
      color: AppColors.inputHintTxtColor, fontWeight: FontWeight.normal, fontSize: 20.0);

  static TextStyle appberTxtStyle = GoogleFonts.lato(
      color:Color(0xff000000), fontWeight: FontWeight.bold, fontSize: 26.0);

  static TextStyle headingTxtStyle = GoogleFonts.lato(
      color:AppColors.headingTxtColor, fontWeight: FontWeight.bold, fontSize: 25.0);

  static TextStyle headingTxtStyleSub = GoogleFonts.lato(
      color:Color(0xff9E4BFB), fontWeight: FontWeight.bold, fontSize: 18.0);

  static TextStyle rectangeWiddet1TxtStyle = GoogleFonts.lato(
      color: AppColors.rectangeWiget1TxtUnselectColor, fontWeight: FontWeight.bold, fontSize: 20.0);
}
