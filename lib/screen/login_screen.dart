  import 'package:flutter/material.dart';
import 'package:webcoderit/utils/color.dart';
import 'package:webcoderit/utils/text_style.dart';
import 'package:webcoderit/widget/button_widget.dart';
import 'package:webcoderit/widget/input_field_widget.dart';
class LoginScreen extends StatefulWidget {
 LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  bool selected=false;

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.appberColor,
        leading: Icon(Icons.arrow_back,color:AppColors.appberIconColor,size: 33,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left:20,top: 10,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Create Your\nAccount ',style: AppStyle.HeadingTxtStyle,),
              SizedBox(height: size.height*0.072 ,),
              InputFieldWidget(hintText: "Email",),
              SizedBox(height: size.height*0.032 ,),
              InputFieldWidget(hintText: "password",),
              SizedBox(height: size.height*0.010 ,),
             Row(
               children: [
                 Checkbox(
                   value: selected,
                   onChanged: (newValue) {
                     setState(() {
                       selected = newValue!;
                     });
                   },
                 ),
                 Text("Remember me",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: AppColors.inputBoderColor),)
               ],
             ),
              SizedBox(height: size.height*0.042,),
              RoundButton(title: 'Sign Up', onPess:(){},),
            ],
          ),
        ),
      ),
    );
  }
}
