import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '../../../../utilities/utilities.dart';

class BuildTextField extends StatefulWidget {
  const BuildTextField(
      {Key? key,
      required this.title,
      required this.name,
      required this.isRequired,
      required this.initialValue,
      required this.capitalization,
      required this.keyboardType,
      this.isPassword = false})
      : super(key: key);

  final String title;
  final bool isRequired;
  final String name;
  final String initialValue;
  final TextCapitalization capitalization;
  final TextInputType keyboardType;
  final bool isPassword;

  @override
  State<BuildTextField> createState() => _BuildTextFieldState();
}

class _BuildTextFieldState extends State<BuildTextField> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(TextSpan(children: [
          TextSpan(
            text: widget.title,
            style: text3(neutral500, regular),
          ),
          TextSpan(
            text: widget.isRequired == true ? "*" : "",
            style: text3(accentOrange500, regular),
          )
        ])),
        const SizedBox(
          height: 5,
        ),
        FormBuilderTextField(
          obscureText: widget.isPassword == true ? isVisible : false,
          textCapitalization: widget.capitalization,
          readOnly: widget.name == "email" ? true : false,
          keyboardType: widget.keyboardType,
          name: widget.name,
          cursorColor: primary,
          initialValue: widget.initialValue,
          decoration: InputDecoration(
            suffixIcon: widget.isPassword == true
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    child: Icon(
                      isVisible
                          ? Icons.visibility_rounded
                          : Icons.visibility_off_rounded,
                      color: neutral200,
                    ),
                  )
                : null,
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
