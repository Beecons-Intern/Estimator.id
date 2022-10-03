import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';

class ItemSumber extends StatelessWidget {
  const ItemSumber(
      {Key? key,
      required this.size,
      required this.title,
      required this.onTap,
      required this.isActive,
      required this.index})
      : super(key: key);

  final Size size;
  final String title;
  final Function()? onTap;
  final int isActive;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin:
            EdgeInsets.only(left: index == 0 ? size.width * 0.05 : 5, right: 5),
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
        decoration: BoxDecoration(
            color: isActive == index ? primary : null,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(
                color: isActive == index ? Colors.transparent : primary)),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: accentYellow500,
              child: Text(
                "20",
                style: text4(neutral100, bold),
              ),
            ),
            Center(
              child: Text(
                title,
                style: text3(isActive == index ? neutral100 : neutral500,
                    isActive == index ? bold : regular),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
