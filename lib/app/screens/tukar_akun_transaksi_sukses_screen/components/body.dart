import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../../widgets/rounded_button.dart';

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
            "Selamat! Anda berhasil menukarkan poin dengan vocher diskon akun premium. Gunakan kode vocher berikut untuk mendapatkan potongan harga ketika upgrade akun premium Estimator.id",
            style: text3(neutral500, medium),
            textAlign: TextAlign.center,
          ),
          SvgPicture.asset("assets/img/sukses.svg"),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Kode Voucher",
            style: text2(neutral500, medium),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            decoration: BoxDecoration(
              color: neutral100,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                    spreadRadius: 5,
                    blurRadius: 8,
                    color: const Color(0xFFE6E6E6).withOpacity(0.8),
                    offset: const Offset(0, 1)),
              ],
            ),
            child: Text(
              "4ASD7JKL",
              style: text3(neutral500, bold),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.file_copy,
                color: primary,
                size: 16,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "salin kode",
                style: text4(primary, medium),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          RoundedButton(text: "Beranda", ontap: () {})
        ],
      ),
    );
  }
}
