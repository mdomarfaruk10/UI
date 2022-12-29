import 'package:flutter/material.dart';
import 'package:webcoderit/utils/color.dart';
import 'package:webcoderit/utils/text_style.dart';
class InputFieldWidget extends StatelessWidget {
 final String hintText;
 final Icon? prefixIcon;
 final Icon? suffixIcon;
  const InputFieldWidget({Key? key,
  required this.hintText,
     this.prefixIcon,
     this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      // width: 300,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText:hintText,
          hintStyle: AppStyle.inputHintTxtStyle,
        enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
               color: AppColors.inputBoderColor,
               width: 2,
             ),
            borderRadius: BorderRadius.circular(10)
        ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.inputBoderColor,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10)),
          fillColor: Colors.white,
            filled: true
        ),

      ),
    );
  }
}
