
import 'package:flutter/material.dart';

class Sp_txt_btn extends StatelessWidget {
  const Sp_txt_btn({Key ? key, required this.text}):super(key: key);
final String text;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 60),
          width: MediaQuery.of(context).size.width,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black45,
            ),

          ),
        ),
      ),
    );
  }
}
