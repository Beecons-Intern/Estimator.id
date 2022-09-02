import 'package:flutter/material.dart';

import '../../utilities/colors.dart';
import '../../utilities/text_styles.dart';
import 'components/body.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(      appBar: AppBar(
        title: Text(
          "Tukar Poin",
          style: text1(neutral500, bold),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: neutral500,
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ), body: Body(),);
  }
}