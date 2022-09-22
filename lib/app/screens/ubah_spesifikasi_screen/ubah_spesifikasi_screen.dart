import 'package:flutter/material.dart';

import '../../utilities/colors.dart';
import '../../utilities/text_styles.dart';
import 'components/body.dart';

class UbahSpesifikasiScreen extends StatelessWidget {
  const UbahSpesifikasiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: Text(
          "Ubah Spesifikasi",
          style: text1(neutral100, bold),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: neutral100,
            )),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
