import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import 'build_card_poin.dart';

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
              "Tukarkan poin anda dengan voucher dapatkan hadiah dan keuntungan menarik",
              style: text3(neutral500, regular),
            ),
            const SizedBox(
              height: 10,
            ),
            const BuildCardPoin(
              text: "Diskon Akun Premium",
              assets: "assets/icon/icon_poin.svg",
            ),
            const BuildCardPoin(
              text: "Pulsa",
              assets: "assets/icon/pulsa.svg",
            ),
            const BuildCardPoin(
              text: "Merchandise Menarik",
              assets: "assets/icon/merchandise.svg",
            ),
            const BuildCardPoin(
              text: "E-wallet",
              assets: "assets/icon/wallet.svg",
            ),
            const BuildCardPoin(
              text: "Token Listrik",
              assets: "assets/icon/listrik.svg",
            ),
            const BuildCardPoin(
              text: "Telkom Indihome",
              assets: "assets/icon/indihome.svg",
            )
          ],
        ));
  }
}
