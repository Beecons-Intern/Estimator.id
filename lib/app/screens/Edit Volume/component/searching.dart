import 'package:estimator_id/app/utilities/colors.dart';
import 'package:flutter/material.dart';

class Searching extends StatelessWidget {
  const Searching({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          border: Border.all(color: primary900, width: 2),
          borderRadius: BorderRadius.circular(10)),
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Masukan kata kunci',
          hintStyle: TextStyle(fontSize: 14, color: neutral400),
          suffixIcon: Icon(Icons.search, color: neutral400),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
