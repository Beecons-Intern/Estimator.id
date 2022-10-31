import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '../../../../utilities/utilities.dart';

class BuildTextField extends StatelessWidget {
  const BuildTextField(
      {Key? key,
      required this.title,
      required this.name,
      required this.hint,
      required this.initialValue,
      required this.isRequired,
      required this.onChanged})
      : super(key: key);

  final String title;
  final String name;
  final String hint;
  final String? initialValue;
  final bool isRequired;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(TextSpan(children: [
            TextSpan(
              text: title,
              style: text3(neutral500, regular),
            ),
            TextSpan(
              text: isRequired == true ? "*" : "",
              style: text3(accentOrange500, regular),
            )
          ])),
          // Text(
          //   title,
          //   style: text3(neutral500, regular),
          // ),
          FormBuilderTextField(
            initialValue: initialValue,
            style: text3(neutral500, regular),
            name: name,
            cursorColor: primary,
            onChanged: onChanged,
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
