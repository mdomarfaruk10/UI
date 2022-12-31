import 'package:flutter/material.dart';
class CustomContainerWidget extends StatelessWidget {
  final Widget widget;
 final double? height;
 final double? width;
  CustomContainerWidget({Key? key,
  required this.widget,
     this.height,
    this.width

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height==height?height:100,
      width: width==width?width:100,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xff00000040).withOpacity(0.1),
              spreadRadius: 3,
              blurRadius: 1,
              offset: Offset(0,2), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(4),
          color: Color(0xffFFFFFF)
      ),
      child:Padding(
        padding: EdgeInsets.all(10),
        child: widget,
      ),
    );
  }
}
