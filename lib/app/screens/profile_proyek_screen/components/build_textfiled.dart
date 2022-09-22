import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class BuildTextField extends StatelessWidget {
  const BuildTextField(
      {Key? key,
      required this.title,
      required this.name,
      required this.hint,
      this.pajak = false})
      : super(key: key);

  final String title;
  final String name;
  final String hint;
  final bool pajak;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: text3(neutral500, regular),
          ),
          FormBuilderTextField(
            readOnly: pajak == true ? true : false,
            initialValue: pajak == true ? "10,00%" : null,
            style: text3(neutral500, regular),
            name: name,
            cursorColor: primary,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: const EdgeInsets.fromLTRB(0, 10, 12, 5),
              hintText: hint,
              hintStyle: text3(neutral200, regular),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: primary, width: 2),
              ),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(width: 2, color: neutral200),
              ),
            ),
          )
        ],
      ),
    );
  }
}