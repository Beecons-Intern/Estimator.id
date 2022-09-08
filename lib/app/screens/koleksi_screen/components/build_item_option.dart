import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class BuildItemOption extends StatelessWidget {
  const BuildItemOption({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: primary, width: 2)),
      child: Row(
        children: [
          CircleAvatar(
            radius: 10,
            backgroundColor: accentBrown500,
            child: Text(
              "2",
              style: text4(neutral100, medium),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: text3(neutral500, semibold),
          ),
        ],
      ),
    );
  }
}