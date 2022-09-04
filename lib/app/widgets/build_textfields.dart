import 'package:estimator_id/app/utilities/text_styles.dart';
import 'package:flutter/material.dart';

import '../utilities/colors.dart';

class BuildTextField extends StatelessWidget {
  const BuildTextField({Key? key, required this.hint, this.isPassword = false})
      : super(key: key);

  final bool isPassword;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: text3(primary, regular),
      obscureText: isPassword == true ? true : false,
      cursorColor: primary,
      decoration: InputDecoration(
        hintStyle: text3(primary, regular),
        suffixIcon: isPassword == true
            ? const Icon(
                Icons.visibility_off_rounded,
                color: primary,
              )
            : null,
        isDense: true,
        contentPadding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: primary, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: primary),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        hintText: hint,
      ),
    );
  }
}
