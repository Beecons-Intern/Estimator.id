import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../../widgets/build_card_radio.dart';
import '../../../widgets/build_price_poin_radio.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            "Pilihlah nominal diskon akun premium yang sesuai dengan poin yang anda miliki",
            style: text3(neutral500, regular),
          ),
          const SizedBox(
            height: 10,
          ),
          const BuildPricePoinRadio(),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
