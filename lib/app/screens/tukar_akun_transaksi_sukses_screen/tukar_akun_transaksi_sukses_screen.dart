import 'package:flutter/material.dart';

import '../../utilities/colors.dart';
import '../../utilities/text_styles.dart';
import 'components/body.dart';

class TukarAkunTransaksiSuksesScreen extends StatelessWidget {
  const TukarAkunTransaksiSuksesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(      appBar: AppBar(
        elevation: 0.8,
        title: Text(
          "Transaksi Sukses",
          style: text1(neutral500, bold),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: neutral500,
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ), body: const Body(),);
  }
}