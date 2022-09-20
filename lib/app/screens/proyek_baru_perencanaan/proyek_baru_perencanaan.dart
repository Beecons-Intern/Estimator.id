import 'package:flutter/material.dart';

import '../../utilities/colors.dart';
import '../../utilities/text_styles.dart';
import '../../widgets/rounded_button.dart';
import 'components/body.dart';

class ProyekBaruPerencanaan extends StatelessWidget {
  const ProyekBaruPerencanaan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primary,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: neutral100,
              )),
          title: Text(
            "Buat Proyek Baru",
            style: text1(neutral100, bold),
          ),
          centerTitle: true,
        ),
        body: const Body());
  }
}
