import 'package:estimator_id/app/utilities/colors.dart';
import 'package:flutter/material.dart';

import '../utilities/text_styles.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          border: Border.all(color: primary, width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: child,
    );
  }
}
