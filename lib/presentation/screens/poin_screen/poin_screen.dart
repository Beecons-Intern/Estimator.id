import 'package:flutter/material.dart';
import '../../../../utilities/utilities.dart';
import 'components/body.dart';

class PoinScreen extends StatelessWidget {
  const PoinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: Text(
          "Tukar Poin",
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
