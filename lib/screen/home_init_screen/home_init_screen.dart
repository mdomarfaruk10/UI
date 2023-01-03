import 'package:flutter/material.dart';
import 'package:webcoderit/screen/home_init_screen/screen/add_screen.dart';
import 'package:webcoderit/screen/home_init_screen/screen/home_screen.dart';
import 'package:webcoderit/screen/home_init_screen/screen/message_screen.dart';
import 'package:webcoderit/screen/home_init_screen/screen/person_screen.dart';
import 'package:webcoderit/screen/home_init_screen/screen/search_screen.dart';
import 'package:webcoderit/screen/test_screen.dart';
import 'package:webcoderit/utils/color.dart';
class HomeInitScreen extends StatefulWidget {
  const HomeInitScreen({Key? key}) : super(key: key);
  @override
  State<HomeInitScreen> createState() => _HomeInitScreenState();
}
class _HomeInitScreenState extends State<HomeInitScreen> {
  int _currentIndex = 0;
  final List screens = [
    HomeScreen(),
    SearchScreen(),
    AddScreen(),
    MessageScreen(),
    PersonScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 16,
        unselectedFontSize: 12,
        selectedItemColor: AppColors.selectedIconColor,
        unselectedItemColor: AppColors.unSelectedIconColor,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,size: 35,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,size: 35,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline,size: 35,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,size: 35,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,size: 35,
            ),
            label: '',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}