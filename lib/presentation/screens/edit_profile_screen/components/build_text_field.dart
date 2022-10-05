import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '../../../../utilities/utilities.dart';

class BuildTextField extends StatelessWidget {
  const BuildTextField(
      {Key? key,
      required this.title,
      required this.name,
      required this.isRequired,
      required this.initialValue,
      required this.capitalization,
      required this.keyboardType})
      : super(key: key);

  final String title;
  final bool isRequired;
  final String name;
  final String initialValue;
  final TextCapitalization capitalization;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const SizedBox(
          height: 5,
        ),
        FormBuilderTextField(
          textCapitalization: capitalization,
          readOnly: name == "email" ? true : false,
          keyboardType: keyboardType,
          name: name,
          cursorColor: primary,
          initialValue: initialValue,
          decoration: InputDecoration(
            hintStyle: text3(primary, regular),
            isDense: true,
            contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: primary, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: neutral200),
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
        )
      ],
    );
  }
}
