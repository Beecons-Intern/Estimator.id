import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import 'build_current_token.dart';

class BuildGroupCurrentToken extends StatelessWidget {
  const BuildGroupCurrentToken({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "Nomor Token Tersimpan",
            style: text3(neutral500, medium),
          ),
          const SizedBox(
            height: 20,
          ),
          BuildCurrentToken(size: size),
          BuildCurrentToken(size: size)
        ],
      ),
    );
  }
}
