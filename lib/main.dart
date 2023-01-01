import 'package:flutter/material.dart';
import 'package:webcoderit/screen/home_init_screen/home_init_screen.dart';
import 'package:webcoderit/screen/onboarding_screen.dart';
import 'package:webcoderit/screen/subscribe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SubscribeScreen(),
    );
  }
}

