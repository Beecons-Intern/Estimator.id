import 'package:flutter/material.dart';
import '../../../../utilities/utilities.dart';

class ItemMenuList extends StatelessWidget {
  const ItemMenuList(
      {Key? key,
      required this.index,
      required this.size,
      required this.title,
      required this.isSelected,
      required this.onTap})
      : super(key: key);

  final int index;
  final Size size;
  final String title;
  final int isSelected;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          margin: EdgeInsets.only(
              left: index == 0 ? size.width * 0.05 : 5,
              right: 5,
              bottom: 8),
          decoration: BoxDecoration(
              color: isSelected == index ? primary : neutral100,
              border: Border.all(color: primary),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: accentYellow500,
                child: Text(
                  "25",
                  style: text4(neutral100, medium),
                ),
              ),
              Text(
                title,
                style: text4(
                    isSelected == index ? neutral100 : neutral500, medium),
              ),
            ],
          )),
    );
  }
}