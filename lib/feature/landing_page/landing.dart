import 'package:flutter/material.dart';
import 'package:project_4thsem/feature/category/category.dart';
import 'package:project_4thsem/feature/homepage/home_page.dart';

import '../../foundation/sp_icons/icon.dart';
import '../profile/profile.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentIndex= 0;
  List<Widget>pages = [HomePage(),Category(),Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: Colors.blue,
          selectedLabelStyle: const TextStyle(fontSize: 13),
          onTap: (index){
            setState(() {
              currentIndex=index;
            });
          },
          items:[
        BottomNavigationBarItem(
            icon: SpIcon(assetname: "logo.png",
            isSelected: 0 == currentIndex,
            ),
        label: "Home"
        ),
        BottomNavigationBarItem(
            icon: SpIcon(assetname: "category.png",
              isSelected: 1 == currentIndex,
            ),
            label: "Category"
        ),
        BottomNavigationBarItem(
            icon: SpIcon(assetname: "profile.png",
              isSelected: 2 == currentIndex,
            ),
            label: "Profile"
        ),
      ],
      ),
      body: pages[currentIndex],
    );
  }
}
