
import 'package:flutter/material.dart';
import 'package:webcoderit/utils/color.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: AppColors.selectedIconColor,
        title: Text("UI"),
        leading: Icon(Icons.arrow_back_ios),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            
          ],
        ),
      ),
      
    );
  }
}
