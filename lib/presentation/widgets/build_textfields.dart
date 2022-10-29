import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '../../utilities/utilities.dart';

class BuildTextField extends StatefulWidget {
  const BuildTextField(
      {Key? key,
      required this.hint,
      required this.name,
      required this.keyboardType,
      this.isPassword = false})
      : super(key: key);

  final bool isPassword;
  final String hint;
  final String name;
  final TextInputType keyboardType;

  @override
  State<BuildTextField> createState() => _BuildTextFieldState();
}

class _BuildTextFieldState extends State<BuildTextField> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      keyboardType: widget.keyboardType,
      name: widget.name,
      style: text3(neutral500, regular),
      obscureText: widget.isPassword == true ? isVisible : false,
      cursorColor: primary,
      decoration: InputDecoration(
        hintStyle: text3(neutral200, regular),
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
        isDense: true,
        contentPadding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: primary, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: neutral200),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        hintText: widget.hint,
      ),
    );
  }
}
