import 'package:flutter/material.dart';
import 'package:project_4thsem/feature/landing_page/landing.dart';

import 'p_wdot_login.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _peofileState();
}

class _peofileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      appBar: AppBar(
        backgroundColor: Color(0xfff3f3f3),
        elevation: 0,
        centerTitle: false,
        leading: IconButton(icon: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LandingPage()),);
        },
        ),
        title: const Text("Profile",
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: "Mulish"
        ),
        ),
      ),
      body: P_wdot(),
    );
  }
}