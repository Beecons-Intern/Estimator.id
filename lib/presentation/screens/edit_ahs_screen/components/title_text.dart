import 'package:flutter/material.dart';
import '../../../../utilities/utilities.dart';

class TitleText extends StatelessWidget {
  const TitleText({Key? key, required this.title, required this.text})
      : super(key: key);

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: text4(neutral500, bold),
      ),
      const SizedBox(
        height: 5,
      ),
      Text(
        text,
        style: text4(neutral500, regular),
      ),
    ]));
  }
}