import 'package:flutter/material.dart';

import '../utilities/colors.dart';
import '../utilities/text_styles.dart';

class OutlineButton extends StatelessWidget {
  const OutlineButton({Key? key, required this.text, required this.ontap})
      : super(key: key);

  final String text;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
            border: Border.all(color: primary, width: 2),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: primary, fontSize: 14, fontWeight: semibold),
          ),
        ),
      ),
    );
  }
}
