import 'package:flutter/material.dart';
class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(bottom: 15),
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
      width:323,
      height: 151,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Blog"),
            Text("What Is Social Media Marketing & Best Social Media Marketing Platfrom",style: TextStyle(fontSize: 18,),),
            Text("Read More ",style: TextStyle(color: Color(0xff9E4BFB))),
          ],
        ),
      ),
    );
  }
}
