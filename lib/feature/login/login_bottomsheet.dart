import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project_4thsem/foundation/sp_solid_btn/sp_solid_btn.dart';

class LoginBottomsheet extends StatelessWidget {
  const LoginBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/2 +15,
      color: CupertinoColors.white,
      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/logo.png",
              height: 50,
                width: 50,
              ),
              IconButton(onPressed: (){} , icon: Icon(Icons.clear,size: 30,)),
            ],

          ),
          const Gap(35),
          RichText(text:
          const TextSpan(
            children: [
              TextSpan(text: "Login ",
                  style: TextStyle(
                    color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.bold
                  )
              ),
              TextSpan(text: " or ",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 13,
                  )
              ),
              TextSpan(text: " Signup",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.bold
                  )
              )
            ]
          )
          ),
          const Gap(35),
          Container(
            height: 45,
            child: const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Mobile Number",
                labelStyle: TextStyle(
                  color: Colors.black54,
                  fontSize: 13
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 10,top: 16),
                  child: Text("+91 |"),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.black26,
                  )
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                      color: Colors.black26,
                )
              ),
            ),
          )
          ),
          const Gap(35),
          RichText(text:
          const TextSpan(
              children: [
                TextSpan(text: "By continueing, I agree to the ",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12,

                    )
                ),
                TextSpan(text: "Terms of Use",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                        fontWeight: FontWeight.bold
                    )
                ),
                TextSpan(text: " & ",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12,

                    )
                ),
                TextSpan(text: "Privacy Policy",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                    )
                )
              ]
          )
          ),
          const Gap(35),
          SpSolidBtn(text: "Continue"),
          const Gap(30),
          RichText(text:
          const TextSpan(
              children: [
                TextSpan(text: "Having trouble in logging in? ",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12,
                    )
                ),
                TextSpan(text: " Get Help",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                    )
                )
              ]
          )
          ),

        ],
      ),
    );
  }
}
