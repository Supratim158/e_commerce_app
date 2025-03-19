import 'package:flutter/cupertino.dart';

import '../../foundation/sp_text_btn/sp_text_btn.dart';

class prfl_footer extends StatelessWidget {
  const prfl_footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Sp_txt_btn(
          text: "FaQ's",
        ),
        Sp_txt_btn(
          text: "About Us",
        ),
        Sp_txt_btn(
          text: "Term of Use",
        ),
        Sp_txt_btn(
          text: "Privacy Policy",
        ),
      ],
    );
  }
}
