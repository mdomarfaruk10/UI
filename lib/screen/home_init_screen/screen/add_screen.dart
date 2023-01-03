import 'package:flutter/material.dart';
import 'package:webcoderit/widget/heading_txt_widget.dart';
import 'package:webcoderit/widget/rectagle_widget_1.dart';
import 'package:webcoderit/widget/rectangle_widget.dart';
import 'package:webcoderit/widget/rectangle_widget_2.dart';

import '../../../widget/input_field_widget.dart';
class AddScreen extends StatelessWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage:AssetImage("assets/onboardingImage.jpg"),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome back,",style: TextStyle(color: Colors.black12),),
            Text("HI, Monir Ahammad",style: TextStyle(color: Colors.black),),
          ],
        ),
        actions: [
          Padding(padding: EdgeInsets.all(10),
          child:Container(
            decoration: BoxDecoration(
                color: Colors.black12,
              borderRadius: BorderRadius.circular(10)
            ),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none,color: Colors.black,size: 25,)),
          ),),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only( top:10,left: 10,right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputFieldWidget(hintText: 'Search',suffixIcon: Icon(Icons.search_outlined),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Rectagle_Widget_1(categoryTxt: 'All Topics',),
                  Rectagle_Widget_1(categoryTxt: 'Digital',),
                  Rectagle_Widget_1(categoryTxt: 'Web',),
                ],
              ),
              HeadingTxtWidget(lHeadingTxt: 'Explore Categories',rHeadingTxt: 'Show All',),

              RectangleWidget2(),
              HeadingTxtWidget(lHeadingTxt: 'Popular Courses',rHeadingTxt: 'Show All',),
             Center(
               child:  RectangleWidget(),
             )

            ],
          ),
        ),
      ),
    );
  }
}
