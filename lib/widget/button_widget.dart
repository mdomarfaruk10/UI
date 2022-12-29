
import 'package:flutter/material.dart';
import 'package:webcoderit/utils/color.dart';
import 'package:webcoderit/utils/text_style.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onPess;

  const RoundButton(
      {Key? key,
        required this.title,
        this.loading = false,
        required this.onPess})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPess,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.buttonLinearGradientColor,
            borderRadius: BorderRadius.circular(20)
        ),
        height: 50,
        width: 300,
        child: Center(
          child: Text('${title}',style: AppStyle.buttonTxtStyle,
          // child:loading?CircularProgressIndicator(color: Colors.red,) :Text('${title}',style: TextStyle(color: AppColors.),),
        ),)
      ),
    );
  }
}