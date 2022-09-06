import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class BuildItemSorting extends StatelessWidget {
  const BuildItemSorting({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: primary, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Text(
            text,
            style: text3(neutral100, semibold),
          ),
          const SizedBox(
            width: 5,
          ),
          const Icon(
            Icons.sort_rounded,
            color: neutral100,
          )
        ],
      ),
    );
  }
}