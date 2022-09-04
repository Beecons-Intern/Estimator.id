import 'package:flutter/material.dart';

import 'build_input_token.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int? selectedIndex;
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
          BuildInputToken(size: size),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: const Divider(
              thickness: 2,
            ),
          ),
          // BuildGroupCurrentToken(size: size),
          /* BuildChoosePrice(size: size, selectedIndex: selectedIndex) */
        ],
      ),
    );
  }
}
