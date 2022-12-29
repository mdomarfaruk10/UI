import 'package:flutter/material.dart';
import 'package:webcoderit/utils/text_style.dart';
class HeadingTxtWidget extends StatelessWidget {
  final String lHeadingTxt;
  final String? rHeadingTxt;
  const HeadingTxtWidget({Key? key,required this.lHeadingTxt,this.rHeadingTxt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:EdgeInsets.only(top: 10,bottom: 10) ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(lHeadingTxt,style: AppStyle.headingTxtStyle,),
           Text(rHeadingTxt!,style: AppStyle.headingTxtStyleSub,)
        ],
      ),
    );
  }
}
