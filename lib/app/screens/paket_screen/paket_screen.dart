import 'package:flutter/material.dart';

import '../../utilities/colors.dart';
import '../../utilities/text_styles.dart';
import 'components/body.dart';

class PaketScreen extends StatelessWidget {
  const PaketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: neutral100,
        title: Text(
          "Paket",
          style: text2(neutral500, regular),
        ),
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: neutral500,
        ),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
