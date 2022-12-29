import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webcoderit/utils/text_style.dart';
import 'package:webcoderit/widget/input_field_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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

                  child:  ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 45,
                    itemBuilder:(context,index){
                      return Text("${index}");
                    } ,),
                ),),
          ],
        ),
      ),
    );
  }
}
