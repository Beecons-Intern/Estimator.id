import 'package:estimator_id/app/screens/proyek/menu_proyek.dart';
import 'package:estimator_id/app/screens/proyek/view_proyek.dart';
import 'package:estimator_id/app/utilities/text_styles.dart';
import 'package:flutter/material.dart';

import '../../utilities/colors.dart';
import '../../widgets/rounded_button.dart';

class Duplikat extends StatelessWidget {
  const Duplikat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Duplikat Proyek",
            style: text2(neutral500, bold),
          ),
          const SizedBox(height: 5),
          Text(
            "Silahkan tentukan rincian profil proyek \n baru anda!",
            style: text4(neutral500, regular),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Text(
                "Nama Proyek",
                style: text4(neutral500, bold),
              ),
              const SizedBox(width: 5),
              Text(
                "*",
                style: text4(accentOrange500, bold),
              )
            ],
          ),
          const SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.all(6),
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: primary),
                borderRadius: BorderRadius.circular(5)),
            child: Text(
              "masukan nama proyek",
              style: text4(neutral500, regular),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Pemilik Proyek",
                style: text4(neutral500, bold),
              ),
              const SizedBox(width: 5),
              Text(
                "*",
                style: text4(accentOrange500, bold),
              )
            ],
          ),
          const SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.all(6),
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: primary),
                borderRadius: BorderRadius.circular(5)),
            child: Text(
              "masukan nama proyek",
              style: text4(neutral500, regular),
            ),
          ),
          const SizedBox(height: 20),
          RoundedButton(
            ontap: () {},
            text: "Duplikat Proyek",
          )
        ],
      ),
    );
  }
}
