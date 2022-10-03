import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '../../../../utilities/utilities.dart';

class BuildTextField extends StatelessWidget {
  const BuildTextField(
      {Key? key,
      required this.size,
      required this.title,
      required this.initialValue,
      required this.isCurrency,
      required this.name})
      : super(key: key);

  final Size size;
  final String title;
  final String initialValue;
  final bool isCurrency;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: text4(neutral500, bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
              width: size.width,
              decoration: BoxDecoration(
                  color: accentGreen100,
                  borderRadius: BorderRadius.circular(5)),
              child: FormBuilderTextField(
                initialValue: initialValue,
                style: text4(neutral500, regular),
                name: name,
                decoration: InputDecoration(
                  prefix: isCurrency == true
                      ? Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Text(
                            "Rp",
                            style: text4(neutral500, bold),
                          ),
                        )
                      : null,
                  prefixIconConstraints: const BoxConstraints(minWidth: 8),
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                ),
              )),
        ],
      ),
    );
  }
}