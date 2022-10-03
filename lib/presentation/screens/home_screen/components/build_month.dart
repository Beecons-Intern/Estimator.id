import 'package:flutter/material.dart';
import '../../../../utilities/utilities.dart';

class BuildItemMonth extends StatelessWidget {
  const BuildItemMonth(
      {Key? key,
      required this.text,
      required this.index,
      required this.isActive,
      required this.onTap,
      required this.size})
      : super(key: key);

  final String text;
  final int index;
  final Size size;
  final int isActive;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
            right: 10, left: index == 0 ? size.width * 0.05 : 0),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: isActive == index ? primary : null,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Center(
          child: Text(
            text,
            style: text3(isActive == index ? neutral100 : primary600, semibold),
          ),
        ),
      ),
    );
  }
}
