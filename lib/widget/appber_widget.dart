import 'package:flutter/material.dart';
import 'package:webcoderit/utils/color.dart';
import 'package:webcoderit/utils/text_style.dart';
PreferredSizeWidget Appber({ required String? appberTitle}){
  return AppBar(
    elevation: 0.0,
    backgroundColor: AppColors.appberColor,
    title: Text(appberTitle!,style: AppStyle.appberTxtStyle,),
  );
}
