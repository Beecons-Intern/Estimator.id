import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class ButtonCard extends StatelessWidget {
  const ButtonCard(
      {Key? key,
      required this.text,
      required this.backgroundColor,
      required this.onTap})
      : super(key: key);

  final String text;
  final Color backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: backgroundColor),
        child: Text(
          text,
          style: text2(neutral100, regular),
        ),
      ),
    );
  }
}
