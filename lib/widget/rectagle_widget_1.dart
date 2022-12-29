import 'package:flutter/material.dart';
import 'package:webcoderit/utils/color.dart';
import 'package:webcoderit/utils/text_style.dart';
class Rectagle_Widget_1 extends StatelessWidget {
  final String categoryTxt;
  const Rectagle_Widget_1({Key? key,required this.categoryTxt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(5),
    child: Container(
      alignment: Alignment.center,
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        color: AppColors.rectangeWiget1Color,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Text(categoryTxt,style: AppStyle.rectangeWiddet1TxtStyle,),
    ),
    );
  }
}
