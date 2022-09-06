import 'package:flutter/material.dart';

import 'build_choose_price.dart';
import 'build_group_current_token.dart';
import 'build_input_token.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isNumberNotEmpty = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          BuildInputPoin(
              size: size,
              onFieldSubmitted: (value) {
                setState(() {
                  isNumberNotEmpty = true;
                });
              }),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: const Divider(
              thickness: 2,
            ),
          ),
          if (isNumberNotEmpty == false) ...[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: BuildGroupCurrentToken(size: size),
            ),
          ] else ...[
            BuildChoosePrice(
              size: size,
            )
          ]
        ],
      ),
    );
  }
}
