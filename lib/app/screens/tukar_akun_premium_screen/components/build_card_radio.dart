import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class BuildCardRadio extends StatelessWidget {
  const BuildCardRadio(
      {Key? key,
      required this.selectedValue,
      required this.onChanged,
      required this.title,
      required this.subtitle,
      required this.value})
      : super(key: key);

  final int selectedValue;
  final void Function(int?)? onChanged;
  final String title;
  final String subtitle;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: neutral100,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                spreadRadius: 2,
                blurRadius: 2,
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(0, 1)),
          ]),
      child: RadioListTile(
        activeColor: primary,
        value: value,
        groupValue: selectedValue,
        onChanged: onChanged,
        title: Text(
          title,
          style: text2(neutral500, bold),
        ),
        subtitle: Text(
          subtitle,
          style: text3(neutral500, semibold),
        ),
        secondary: Image.asset("assets/icon/koin.png"),
        toggleable: true,
        controlAffinity: ListTileControlAffinity.trailing,
      ),
    );
  }
}