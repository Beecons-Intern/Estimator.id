import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class BuildItemMonth extends StatelessWidget {
  const BuildItemMonth(
      {Key? key, required this.text, this.initialIndex = 1, required this.size})
      : super(key: key);

  final String text;
  final int initialIndex;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          right: 10, left: initialIndex == 0 ? size.width * 0.05 : 0),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: initialIndex == 0 ? primary : null,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Center(
        child: Text(
          text,
          style: text3(initialIndex == 0 ? neutral100 : primary600, semibold),
        ),
      ),
    );
  }
}