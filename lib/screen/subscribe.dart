import 'package:flutter/material.dart';
import 'package:webcoderit/utils/color.dart';
import 'package:webcoderit/widget/appber_widget.dart';
class SubscribeScreen extends StatelessWidget {
  const SubscribeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.subcribeSnBgColor,
      appBar:Appber(appberTitle: 'SUBSCRIBE'),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text("House#06, Level#03 Road-1/A, Sector#09 \nHousebuilding, Uttara Dhaka-1230",style: TextStyle(color: Colors.white),),
              Text("House#06, Level#03 Road-1/A, Sector#09 \nHousebuilding, Uttara Dhaka-1230",style: TextStyle(color: Colors.white),),
               SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                 Expanded(child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisSize: MainAxisSize.max,
                   children: [
                     Text("Category",style: TextStyle(fontSize: 17,color: Colors.white),),
                     TextButton.icon(onPressed: null, icon: Icon(Icons.arrow_forward,color: Colors.orange,size: 15,), label: Text("Communication English",style: TextStyle(fontSize: 8,color: Colors.white),)),
                     TextButton.icon(onPressed: null, icon: Icon(Icons.arrow_forward,color: Colors.orange,size: 15,), label: Text("Freelancing",style: TextStyle(fontSize: 8,color: Colors.white),)),
                     TextButton.icon(onPressed: null, icon: Icon(Icons.arrow_forward,color: Colors.orange,size: 15,), label: Text("Digital Marketing",style: TextStyle(fontSize:8,color: Colors.white),)),
                     TextButton.icon(onPressed: null, icon: Icon(Icons.arrow_forward,color: Colors.orange,size: 15,), label: Text("Logo Design",style: TextStyle(fontSize: 8,color: Colors.white),)),
                     TextButton.icon(onPressed: null, icon: Icon(Icons.arrow_forward,color: Colors.orange,size: 15,), label: Text("Vue Js",style: TextStyle(fontSize: 8,color: Colors.white),)),
                     TextButton.icon(onPressed: null, icon: Icon(Icons.arrow_forward,color: Colors.orange,size: 15,), label: Text("Rest API",style: TextStyle(fontSize: 8,color: Colors.white),)),
                   ],
                 ),),
                 Expanded(child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisSize: MainAxisSize.max,
                   children: [
                     Text("Quick Links",style: TextStyle(fontSize: 18,color: Colors.white),),
                     TextButton.icon(onPressed: null, icon: Icon(Icons.arrow_forward,color: Colors.orange,size: 15,), label: Text("FAQ",style: TextStyle(fontSize: 8,color: Colors.white),)),
                     TextButton.icon(onPressed: null, icon: Icon(Icons.arrow_forward,color: Colors.orange,size: 15,), label: Text("Student Admission",style: TextStyle(fontSize: 8,color: Colors.white),)),
                     TextButton.icon(onPressed: null, icon: Icon(Icons.arrow_forward,color: Colors.orange,size: 15,), label: Text("Student Support",style: TextStyle(fontSize: 8,color: Colors.white),)),
                     TextButton.icon(onPressed: null, icon: Icon(Icons.arrow_forward,color: Colors.orange,size: 15,), label: Text("Support Attendance",style: TextStyle(fontSize: 8,color: Colors.white),)),
                     TextButton.icon(onPressed: null, icon: Icon(Icons.arrow_forward,color: Colors.orange,size: 15,), label: Text("teacher Login",style: TextStyle(fontSize:8,color: Colors.white),)),
                     TextButton.icon(onPressed: null, icon: Icon(Icons.arrow_forward,color: Colors.orange,size: 15,), label: Text("Become a teacher",style: TextStyle(fontSize: 8,color: Colors.white),)),
                   ],
                 ),),
                 Expanded(child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisSize: MainAxisSize.max,
                   children: [
                     Text("Category",style: TextStyle(fontSize: 18,color: Colors.white),),
                     TextButton.icon(onPressed: null, icon: Icon(Icons.arrow_forward,color: Colors.orange,size: 15,), label: Text("Web Registration Form",style: TextStyle(fontSize: 8,color: Colors.white),)),
                     TextButton.icon(onPressed: null, icon: Icon(Icons.arrow_forward,color: Colors.orange,size: 15,), label: Text("Digital Marketing Registration Form",style: TextStyle(fontSize:8,color: Colors.white),)),
                     TextButton.icon(onPressed: null, icon: Icon(Icons.arrow_forward,color: Colors.orange,size: 15,), label: Text("English Registration Form",style: TextStyle(fontSize: 8,color: Colors.white),)),
                     TextButton.icon(onPressed: null, icon: Icon(Icons.arrow_forward,color: Colors.orange,size: 15,), label: Text("Find Certificare",style: TextStyle(fontSize: 8,color: Colors.white),)),
                     TextButton.icon(onPressed: null, icon: Icon(Icons.arrow_forward,color: Colors.orange,size: 15,), label: Text("Apply for Certificate",style: TextStyle(fontSize: 8,color: Colors.white),)),
                     TextButton.icon(onPressed: null, icon: Icon(Icons.arrow_forward,color: Colors.orange,size: 15,), label: Text("Exam",style: TextStyle(fontSize: 9,color: Colors.white),)),
                   ],
                 ),),
                ],
              ),
              Divider(color: Colors.white,),
              Text("House#06, Level#03 Road-1/A, Sector#09 \nHousebuilding, Uttara Dhaka-1230",style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
      ),
    );
  }
}



