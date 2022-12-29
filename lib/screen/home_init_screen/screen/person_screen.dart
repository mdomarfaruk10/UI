import 'package:flutter/material.dart';
import 'package:webcoderit/widget/button_widget.dart';
import 'package:webcoderit/widget/heading_txt_widget.dart';
import 'package:webcoderit/widget/input_field_widget.dart';
import 'package:webcoderit/widget/rectangle_widget.dart';
class PersonScreen extends StatelessWidget {
  const PersonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 50,left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputFieldWidget(hintText: 'InputFieldWidget',prefixIcon: Icon(Icons.search_outlined),suffixIcon: Icon(Icons.filter_list_alt),),
              SizedBox(height: 30,),
              Row(
                children: [
                  Expanded(child: RoundButton(title: 'Courses', onPess: () {  },),),
                  SizedBox(width: 5,),
                  Expanded(child: RoundButton(title: 'Mentors', onPess: () {  },),),
                ],
              ),
              const HeadingTxtWidget(lHeadingTxt: 'Price of Courses',rHeadingTxt: '',),

              RectangleWidget()

            ],
          ),
        ),
      ) ,
    );
  }
}
