import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';

class BuildTextField extends StatefulWidget {
  const BuildTextField({Key? key, required this.hint, this.isPassword = false})
      : super(key: key);

  final bool isPassword;
  final String hint;

  @override
  State<BuildTextField> createState() => _BuildTextFieldState();
}

class _BuildTextFieldState extends State<BuildTextField> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: text3(neutral500, regular),
      obscureText: isVisible ? false : true,
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
