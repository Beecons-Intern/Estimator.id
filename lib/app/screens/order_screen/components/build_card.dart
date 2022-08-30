import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class BuildCard extends StatelessWidget {
  const BuildCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFFAFAFA),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: const Color(0xFFE6E6E6)),
        boxShadow: [
          BoxShadow(
              spreadRadius: 2,
              blurRadius: 2,
              color: const Color(0xFFE6E6E6).withOpacity(0.8),
              offset: const Offset(0, 1)),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 3),
            width: size.width,
            decoration: const BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Text(
              "Hemat 25%",
              style: text4(neutral100, regular),
              textAlign: TextAlign.end,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "3 Bulan",
                      style: text2(primary, medium),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Rp 299.00", style: text2(primary, medium)),
                        Text("/bulan", style: text4(primary, regular))
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text("Rp 399.00",
                        style: TextStyle(
                            color: Color(0xFFEA1823),
                            fontSize: 10,
                            fontWeight: semibold,
                            decoration: TextDecoration.lineThrough)),
                    Text("/bulan",
                        style: TextStyle(
                            color: Color(0xFFEA1823),
                            fontSize: 10,
                            fontWeight: light,
                            decoration: TextDecoration.lineThrough))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}