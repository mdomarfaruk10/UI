import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webcoderit/screen/home_init_screen/home_init_screen.dart';
import 'package:webcoderit/screen/onboarding_screen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showHome =prefs.getBool("showHome")??false;
  runApp( MyApp(showHome:showHome));
}

class MyApp extends StatelessWidget {
  final bool showHome;

  const MyApp({Key? key,
    required this.showHome
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: showHome? HomeInitScreen():MyOnboardingScreen(),
    );
  }
}

