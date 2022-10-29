import 'package:flutter/material.dart';
import '../../../widgets/widgets.dart';
import '../../../../utilities/utilities.dart';

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
                "assets/icon/password.png",
                width: 180,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Buat password baru",
              style: text1(neutral500, semibold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Masukkan password baru kamu! Password baru harus berbeda dengan yang lama.",
              style: text3(neutral500, regular),
            ),
            const SizedBox(
              height: 20,
            ),
            const BuildTextField(
              hint: "example@gmail.com",
              isPassword: true,
              name: "email",
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 16,
            ),
            const BuildTextField(
              hint: "example@gmail.com",
              isPassword: true,
              name: "password",
              keyboardType: TextInputType.visiblePassword,
            ),
            const SizedBox(
              height: 80,
            ),
            RoundedButton(
              text: "Kirim",
              ontap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            OutlineButton(
              text: "Reset",
              ontap: () {},
            )
          ],
        ),
      ),
    );
  }
}
