import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class BuildItemPrice extends StatelessWidget {
  const BuildItemPrice(
      {Key? key,
      required this.title,
      required this.icon,
      required this.color,
      required this.index})
      : super(key: key);

  final String title;
  final IconData icon;
  final Color color;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15, left: index == 0 ? 15 : 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: color,
                size: 18,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                title,
                style: text4(neutral500, regular),
              )
            ],
          ),
          Text(
            "Rp1.000.000.000",
            style: text3(neutral500, semibold),
          )
        ],
      ),
    );
  }
}