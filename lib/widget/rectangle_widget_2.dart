import 'package:flutter/material.dart';
class RectangleWidget2 extends StatelessWidget {
  const RectangleWidget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: Color(0xff9E4BFB),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text("Digital Marketing",style: TextStyle(color: Colors.white,fontSize: 17),),
      ),
    );
  }
}
