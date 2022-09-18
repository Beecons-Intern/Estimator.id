import 'package:estimator_id/app/utilities/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';

class ItemProfilProyek extends StatelessWidget {
  const ItemProfilProyek({Key? key, required this.nama, required this.edit})
      : super(key: key);

  final String nama;
  final String edit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Text(
            nama,
            style: text3(neutral500, regular),
          ),
        )),
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.all(6),
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                border: Border.all(
                  color: primary,
                ),
                borderRadius: BorderRadius.circular(5)),
            child: Text(
              edit,
              style: text3(neutral500, regular),
            ),
          ),
        )
      ],
    );
  }
}
