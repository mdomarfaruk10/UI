import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:webcoderit/utils/text_style.dart';
import 'package:webcoderit/widget/_custom_container_widget.dart';
import 'package:webcoderit/widget/input_field_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double value=3.5;

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(
          size: 30,
          color: Colors.white
        ),
        elevation: 0.0,
        backgroundColor: Color(0xffFC9D01),
        title: Text("Home",style: AppStyle.appberTxtStyle,),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.settings,))
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
              color:Color(0xffFC9D01) ,
              height: 70,
              width: double.infinity,
              child: InputFieldWidget(hintText: 'search Your Products',prefixIcon: Icon(Icons.search_outlined),),
            ),
            Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: CustomContainerWidget(
                        height:325,
                        width:327,
                      widget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.computer,size: 55,),
                          Text('Web Development',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),),
                      Center(
                        child: RatingStars(
                          value: value,
                          onValueChanged: (v) {
                            //
                            setState(() {
                              value = v;
                            });
                          },
                          starBuilder: (index, color) => Icon(
                            Icons.star_outline,
                            color: color,
                          ),
                          starCount: 5,
                          starSize: 20,
                          valueLabelColor: const Color(0xff9b9b9b),
                          valueLabelTextStyle: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 12.0),
                          valueLabelRadius: 10,
                          maxValue: 5,
                          starSpacing: 2,
                          maxValueVisibility: true,
                          valueLabelVisibility: true,
                          animationDuration: Duration(milliseconds: 1000),
                          valueLabelPadding:
                          const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                          valueLabelMargin: const EdgeInsets.only(right: 8),
                          starOffColor: const Color(0xffe7e8ea),
                          starColor: Colors.red
                        ),
                      ),

                          Text('Web development refers to building, '
                              'creating, and maintaining websites. '
                              'It includes aspects such as web design, '
                              'web publishing, web programming,'
                              ' and database management.'
                              ' While the terms "web developer"'
                              ' and "web designer" are often used synonymously, '
                              'they do not mean the same thing.',style: TextStyle(fontSize: 17),),
                        ],
                      ),

                    ),
                  ),
                  // child:  ListView.builder(
                  //   physics: ScrollPhysics(),
                  //   shrinkWrap: true,
                  //   itemCount: 45,
                  //   itemBuilder:(context,index){
                  //     return Text("${index}");
                  //   } ,),
                ),),
          ],
        ),
      ),
    );
  }
}
