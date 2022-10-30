import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../../utilities/utilities.dart';

class BuildTextFieldKompetensi extends StatefulWidget {
  const BuildTextFieldKompetensi(
      {Key? key, required this.name, required this.initialValue})
      : super(key: key);
  final String name;
  final String initialValue;

  @override
  State<BuildTextFieldKompetensi> createState() =>
      _BuildTextFieldKompetensiState();
}

class _BuildTextFieldKompetensiState extends State<BuildTextFieldKompetensi> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      keyboardType: TextInputType.number,
      initialValue: widget.initialValue,
      name: widget.name,
      style: text3(neutral500, regular),
      cursorColor: primary,
      decoration: const InputDecoration(
        prefix: Text("Rp. "),
        isDense: true,
        contentPadding: EdgeInsets.fromLTRB(12, 12, 12, 12),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: neutral200),
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );
  }
}
