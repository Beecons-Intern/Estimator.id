import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../../widgets/rounded_button.dart';

class HapusKategori extends StatelessWidget {
  const HapusKategori({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content:
          Column(
        crossAxisAlignment:
            CrossAxisAlignment
                .start,
        mainAxisSize:
            MainAxisSize
                .min,
        children: [
          Center(
            child:
                Text(
              "Hapus Kategori",
              style:
                  text2(accentOrange500, bold),
            ),
          ),
          const SizedBox(
            height:
                16,
          ),
          RichText(
              textAlign: TextAlign
                  .center,
              text:
                  TextSpan(text: "Apakah anda akan menghapus pekerjaan pada kategori ", style: text3(neutral500, light), children: [
                TextSpan(text: "Pekerjaan Persiapan ?", style: text3(neutral500, medium))
              ])),
          const SizedBox(
            height:
                24,
          ),
          Text(
            "Peringatan!",
            style: text3(
                accentOrange500,
                medium),
          ),
          Text(
            "Semua rincian yang berkaitan dengan kategori tersebut akan ikut terhapus.",
            style: text3(
                neutral500,
                light),
          ),
          const SizedBox(
            height:
                10,
          ),
          RoundedButton(
              text:
                  "Hapus",
              ontap:
                  () {})
        ],
      ),
    );
  }
}