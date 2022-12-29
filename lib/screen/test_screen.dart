import 'package:flutter/material.dart';
class MyWidget extends StatefulWidget {
  @override
  MyWidgetState createState() => MyWidgetState();
}

class MyWidgetState extends State<MyWidget> {
  late int tappedIndex;

  @override
  void initState() {
    super.initState();
    tappedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                        color: tappedIndex == index ? Colors.blue : Colors.grey,
                        child: InkWell(
                          onTap: (){
                            setState((){
                              tappedIndex=index;
                            });
                          },
                          child: Text("${index}"),
                        )
                    );
                  })
            ]));
  }
}