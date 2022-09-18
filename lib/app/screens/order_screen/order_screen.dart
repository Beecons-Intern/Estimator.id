import 'package:flutter/material.dart';

import '../../route/route_name.dart';
import '../../utilities/colors.dart';
import '../../utilities/text_styles.dart';
import '../../widgets/build_textfields.dart';
import '../../widgets/rounded_button.dart';
import 'components/body.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: Text(
          "Daftar Order",
          style: text1(neutral100, bold),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: neutral100,
          ),
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
                              Image.asset(
                                "assets/img/icon-subscribe.png",
                                width: 150,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Tetap terhubung dengan kami untuk mendapatkan informasi fitur terbaru dan pembaharuan sistem serta penawaran program peningkatan keahlian",
                                style: text4(neutral500, regular),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              buildTextField("Masukkan nama lengkap"),
                              const SizedBox(
                                height: 10,
                              ),
                              buildTextField("Masukkan nomor whatsapp"),
                              const SizedBox(
                                height: 20,
                              ),
                              RoundedButton(
                                ontap: () {
                                  Navigator.pushNamedAndRemoveUntil(context,
                                      RouteName.navigation, (route) => false);
                                },
                                text: "Kirim",
                              )
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

  TextField buildTextField(String hint) {
    return TextField(
      style: text3(primary, regular),
      cursorColor: primary,
      decoration: InputDecoration(
        hintStyle: text3(neutral200, regular),
        isDense: true,
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: primary, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: neutral200),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        hintText: hint,
      ),
    );
  }
}
