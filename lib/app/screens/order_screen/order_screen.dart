import 'package:flutter/material.dart';

import '../../utilities/colors.dart';
import '../../utilities/text_styles.dart';
import '../../widgets/rounded_button.dart';
import 'components/body.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: neutral100,
        title: Text(
          "Daftar Order",
          style: text1(neutral500, bold),
        ),
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: neutral500,
        ),
        centerTitle: true,
      ),
      bottomSheet: Container(
        padding:
            EdgeInsets.symmetric(horizontal: size.width * 0.05, vertical: 10),
        width: size.width,
        height: 130,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
                spreadRadius: 2,
                blurRadius: 2,
                color: Colors.black.withOpacity(0.2),
                offset: const Offset(0, 1)),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "TOTAL",
                  style: text2(neutral500, medium),
                ),
                Text(
                  "Rp 3.969.360",
                  style: text2(neutral500, medium),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "*)Dengan ini Anda menyetujui semua kebijakan privasi dan ketentuan penggunaan yang berlaku",
              style: text4(neutral500, light),
            ),
            const SizedBox(
              height: 5,
            ),
            RoundedButton(
              text: "Lanjutkan Pembayaran",
              ontap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset("assets/img/icon-subscribe.png"),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Tetap terhubung dengan kami untuk mendapatkan informasi fitur terbaru dan pembaharuan sistem serta penawaran program peningkatan keahlian",
                                style: text3(neutral500, regular),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ));
              },
            ),
          ],
        ),
      ),
      body: const Body(),
    );
  }
}
