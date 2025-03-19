import 'package:flutter/material.dart';

class SpSolidBtn extends StatelessWidget {
  const SpSolidBtn({Key? key, required this.text}):super(key: key);
final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {} ,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          textStyle: MaterialStateProperty.all(
            const TextStyle( fontSize: 13,
            fontWeight: FontWeight.w600,
            )
          )
        ),
        child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Center(child: Text(text,style: TextStyle(color: Colors.white),)
            )
        ),
    );
  }
}
