import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '../../../../utilities/utilities.dart';

class BuildTextField extends StatelessWidget {
  const BuildTextField(
      {Key? key,
      required this.title,
      required this.initialValue,
      required this.name})
      : super(key: key);

  final String title;
  final String? initialValue;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: text3(neutral500, regular)),
          FormBuilderTextField(
            readOnly: true,
            initialValue: initialValue,
            style: text3(neutral500, regular),
            name: name,
            cursorColor: primary,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: const EdgeInsets.fromLTRB(0, 10, 12, 5),
              hintStyle: text3(neutral200, regular),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(width: 2, color: neutral200),
              ),
              focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: neutral200, width: 2)),
            ),
          )
        ],
      ),
    );
  }
}
