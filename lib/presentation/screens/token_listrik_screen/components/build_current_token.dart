import 'package:flutter/material.dart';
import '../../../../utilities/utilities.dart';

class BuildCurrentToken extends StatelessWidget {
  const BuildCurrentToken({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      width: size.width,
      decoration: BoxDecoration(
        border: Border.all(color: neutral200, width: 1.5),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: neutral100,
        boxShadow: [
          BoxShadow(
              spreadRadius: 2,
              blurRadius: 2,
              color: const Color(0xFFE6E6E6).withOpacity(0.5),
              offset: const Offset(0, 1)),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.electric_bolt_outlined,
            color: primary,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "0987 0875 09871",
                style: text2(neutral500, bold),
              ),
              Text(
                "Rafi Ramadhana",
                style: body(neutral500, light),
              )
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(neutral100),
                side:
                    MaterialStateProperty.all(const BorderSide(color: primary)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)))),
            child: Text(
              "Pilih",
              style: text4(primary, light),
            ),
          )
        ],
      ),
    );
  }
}