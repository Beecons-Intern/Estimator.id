import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class BuildTextItemSpan extends StatelessWidget {
  const BuildTextItemSpan({Key? key, required this.title, required this.text})
      : super(key: key);

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 3),
      child: RichText(
          text: TextSpan(
              text: title,
              style: text3(neutral500, regular),
              children: [
            TextSpan(text: text, style: text3(neutral500, regular))
          ])),
    );
  }
}