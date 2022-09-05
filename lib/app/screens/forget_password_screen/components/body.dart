import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../../widgets/build_textfields.dart';
import '../../../widgets/rounded_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            Center(
              child: Image.asset(
                "assets/icon/email.png",
                width: 180,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Masukkan email aktifmu",
              style: text1(neutral500, semibold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Silakan masukkan Email aktif yang Anda gunakan. Link reset password akan dikirimkan melalui email.",
              style: text3(neutral500, regular),
            ),
            const SizedBox(
              height: 20,
            ),
            const BuildTextField(
              hint: "example@gmail.com",
            ),
            const SizedBox(
              height: 80,
            ),
            RoundedButton(
              text: "Kirim",
              ontap: () {},
            )
          ],
        ),
      ),
    );
  }
}
