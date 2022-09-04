import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../utilities/colors.dart';
import '../../utilities/text_styles.dart';

class TukarListrikSuksesScreen extends StatelessWidget {
  const TukarListrikSuksesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: neutral500,
            )),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          children: [
            Center(child: Lottie.asset("assets/lotie/success.json", width: 60)),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Penukaran Berhasil",
              style: text1(primary, bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "800 Poin",
              style: heading4(neutral500, bold),
            )
          ],
        ),
      ),
    );
  }
}
