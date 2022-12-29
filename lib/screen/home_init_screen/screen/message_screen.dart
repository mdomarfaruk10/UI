import 'package:flutter/material.dart';
import 'package:webcoderit/widget/appber_widget.dart';
import 'package:webcoderit/widget/custom_card_widget.dart';
class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: Appber(appberTitle: "BLOG"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              CustomCardWidget(),
              CustomCardWidget(),
              CustomCardWidget(),
              CustomCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
