import 'package:flutter/material.dart';

import '../login/login_bottomsheet.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _categoryState();
}

class _categoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black26,
          body: LoginBottomsheet(),
      ),
    );
  }
}
