import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../../widgets/rounded_button.dart';
import 'build_page_ahs.dart';
import 'build_page_alat.dart';
import 'build_page_bahan.dart';
import 'build_page_upah.dart';

class Body extends StatefulWidget {
  const Body({Key? key, required this.controller}) : super(key: key);

  final PageController controller;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return PageView(
      controller: widget.controller,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        BuildPageAHS(
          size: size,
        ),
        BuildPageBahan(size: size),
        BuildPageUpah(size: size),
        BuildPageAlat(size: size),
      ],
    );
  }

  Future<dynamic> buildShowModal(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset("assets/icon/upgrade.svg"),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Untuk melihat analisa pekerjaan ini, upgrade akun Anda!",
                    style: text4(neutral500, regular),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RoundedButton(text: "Upgrade Sekarang", ontap: () {})
                ],
              ),
            ));
  }
}
