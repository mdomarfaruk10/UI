import 'package:flutter/material.dart';
import 'package:webcoderit/widget/_custom_container_widget.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("text"),
      ),
      body:Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CustomContainerWidget(
              height:325,
              width:327,
              widget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.computer,size: 55,),
                  Text('Web Development',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),),
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

            )
          ],
        ),
      ),
    );
  }
}
