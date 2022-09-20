import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class ItemSumber extends StatelessWidget {
  const ItemSumber(
      {Key? key,
      required this.title,
      required this.onTap,
      required this.isActive})
      : super(key: key);

  final String title;
  final Function()? onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
        decoration: BoxDecoration(
            color: isActive == true ? primary : null,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            border: Border.all(
                color: isActive == true ? Colors.transparent : primary)),
        child: Text(
          title,
          style: text3(isActive == true ? neutral100 : neutral500, regular),
        ),
      ),
    );
  }
}