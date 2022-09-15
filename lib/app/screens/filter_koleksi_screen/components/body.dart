import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../../widgets/build_textfields.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "Nama Pekerjaan",
            style: text3(neutral500, regular),
          ),
          const SizedBox(
            height: 5,
          ),
          const BuildTextField(
            hint: "Masukkan nama pekerjaan",
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "Satuan",
            style: text3(neutral500, regular),
          ),
          const SizedBox(
            height: 5,
          ),
          const BuildTextField(
            hint: "Pilih satuan",
          ),
        ],
      ),
    );
  }
}