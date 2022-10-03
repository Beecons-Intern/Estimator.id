import 'package:flutter/material.dart';
import '../../../../utilities/utilities.dart';

class BuildItemPrice extends StatelessWidget {
  const BuildItemPrice(
      {Key? key,
      required this.title,
      required this.icon,
      required this.color,
      required this.index, required this.value})
      : super(key: key);

  final String title;
  final IconData icon;
  final Color color;
  final int index;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
          value,
          style: text3(neutral500, semibold),
        )
      ],
    );
  }
}