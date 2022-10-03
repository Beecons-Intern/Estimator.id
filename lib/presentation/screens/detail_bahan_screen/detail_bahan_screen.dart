import 'package:flutter/material.dart';
import 'components/body.dart';
import '../../../utilities/utilities.dart';

class DetailBahanScreen extends StatelessWidget {
  const DetailBahanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: Text(
          "Detail Bahan",
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
