import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class ButtonCard extends StatelessWidget {
  const ButtonCard(
      {Key? key, required this.text, required this.backgroundColor})
      : super(key: key);

  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          color: backgroundColor),
      child: Text(
        text,
        style: text2(neutral100, regular),
      ),
    );
  }
}