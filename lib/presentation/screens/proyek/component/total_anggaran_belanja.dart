import 'package:flutter/material.dart';
import '../../../../utilities/utilities.dart';

class TotalAnggaranBelanja extends StatelessWidget {
  final String totalName;
  final String harga;

  const TotalAnggaranBelanja({
    Key? key,
    required this.totalName,
    required this.harga,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
                color: primary, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Text(
                totalName,
                style: text3(neutral100, regular),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 6),
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                border: Border.all(
                  color: primary,
                ),
                borderRadius: BorderRadius.circular(4)),
            child: Center(
              child: Text(
                harga,
                style: text3(neutral500, regular),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
