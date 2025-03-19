import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project_4thsem/feature/profile/prfl_footer.dart';
import 'package:project_4thsem/foundation/profile_item/profile_list.dart';

class P_wdot extends StatelessWidget {
  const P_wdot({super.key});

  @override
  Widget build(BuildContext context) {
    double topContHeight = MediaQuery.of(context).size.height * 0.25;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: topContHeight,
            child: Stack(
              clipBehavior: Clip.none, // Allows overflow positioning
              children: [
                Column(
                  children: [
                    Container(
                      height: topContHeight * 0.58,
                      color: const Color(0xff1d2230),
                    ),
                    Container(
                      height: topContHeight * 0.42,
                      color: Colors.white,
                    ),
                  ],
                ),
                Positioned(
                  bottom: 20, // Adjust position to prevent overflow
                  left: 20,
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 120,
                      width: 120,
                      child: Image.asset("assets/images/profile.png"),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 30,
                    left: 160,
                  child: ElevatedButton(
                      onPressed: () {} ,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ),
                      child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width-230,
                          child: Center(child: Text("LOG IN/SIGN UP")
                          )
                      )
                  ),
                )
              ],
            ),
          ),
          const Gap(45), // Adjusted spacing to prevent overlap
          Container(
            color: Colors.white,
            child: Column(
              children: const [
                Profile_list(
                    title: "Orders",
                    subtitle: "Check your order status",
                    assetname: "profile.png",
                    isLast: false),
                Profile_list(
                    title: "Help Center",
                    subtitle: "Help regarding your order",
                    assetname: "profile.png",
                    isLast: false),
                Profile_list(
                    title: "Wishlist",
                    subtitle: "Your most loved items",
                    assetname: "profile.png",
                    isLast: true),
              ],
            ),
          ),
          const Gap(15),
          Container(
            color: Colors.white,
            child: Column(
              children: const [
                Profile_list(
                    title: "Scan for coupon",
                    assetname: "profile.png",
                    isLast: false),
                Profile_list(
                    title: "Refer & Earn",
                    assetname: "profile.png",
                    isLast: true),
              ],
            ),
          ),
          const Gap(15),
          const prfl_footer(),
          const Gap(15),
        ],
      ),
    );
  }
}
