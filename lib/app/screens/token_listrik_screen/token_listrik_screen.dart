import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utilities/colors.dart';
import '../../utilities/text_styles.dart';
import 'components/body.dart';

class TokenListrikScreen extends StatelessWidget {
  const TokenListrikScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        // elevation: 0.8,
        backgroundColor: primary,
        toolbarHeight: 120,
        title: Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Stack(
            children: [
              const Icon(Icons.arrow_back_ios_new_outlined),
              Center(
                child: Column(
                  children: [
                    Text(
                      "Token Listrik",
                      style: text1(neutral100, bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SvgPicture.asset("assets/icon/lamp.svg")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
