import 'package:flutter/material.dart';

import '../utilities/text_styles.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({Key? key, required this.text, required this.ontap})
      : super(key: key);

  final String text;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: const BoxDecoration(
            color: Color(0xFF089E14),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: semibold),
          ),
        ),
      ),
    );
  }
}
