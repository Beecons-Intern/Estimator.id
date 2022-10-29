import 'package:estimator_id/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../route/route_name.dart';
import '../../../widgets/widgets.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            SvgPicture.asset(
              "assets/logo/estimator_green.svg",
              width: 100,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset("assets/logo/welcome.svg"),
            SizedBox(
              height: size.height * 0.05,
            ),
            Text(
              "Kerja Hemat",
              style: heading5(primary, bold),
            ),
            Text(
              "Hasil Akurat!",
              style: heading5(primary, bold),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "aplikasi pembuatan RAB online dengan dukungan database harga terbaru yang diperbaharui secara realtime dan dapat digunakan untuk berkolaborasi dari mana saja",
              style: text3(neutral500, regular),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 32,
            ),
            RoundedButton(
              text: "Login",
              ontap: () {
                Navigator.pushNamed(context, RouteName.loginScreen);
              },
            ),
            const SizedBox(
              height: 8,
            ),
            OutlineButton(
              text: "Register",
              ontap: () {
                Navigator.pushNamed(context, RouteName.registerScreen);
              },
            )
          ],
        ),
      ),
    );
  }
}
