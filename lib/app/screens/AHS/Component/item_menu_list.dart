import 'package:estimator_id/app/utilities/colors.dart';
import 'package:flutter/material.dart';

class ItemMenuList extends StatelessWidget {
  const ItemMenuList(
      {Key? key,
      required this.title,
      required this.isSelected,
      required this.onTap})
      : super(key: key);

  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.all(3),
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          decoration: BoxDecoration(
              color: isSelected ? primary900 : neutral100,
              border: Border.all(color: isSelected ? primary900 : primary900),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ///untuk jumlah notification button
              const CircleAvatar(
                maxRadius: 10,
                backgroundColor: Colors.amber,
                child: Text(
                  "25",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 5),

              ///title button
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 10),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: isSelected ? neutral100 : Colors.black,
                      fontSize: 12),
                ),
              ),
            ],
          )),
    );
  }
}
