import 'package:flutter/material.dart';
import 'components/body.dart';
import '../../../../utilities/utilities.dart';

class EditAHSScreen extends StatelessWidget {
  const EditAHSScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: Text(
          "Rincian AHS",
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
      body: Body(),
    );
  }
}
