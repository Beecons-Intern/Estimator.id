import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../widgets/widgets.dart';
import '../../../../utilities/utilities.dart';
import 'build_page_ahs.dart';
import 'build_page_alat.dart';
import 'build_page_bahan.dart';
import 'build_page_upah.dart';

class Body extends StatefulWidget {
  const Body({Key? key, required this.pageActive}) : super(key: key);
  final int pageActive;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Widget> pages = [
      BuildPageAHS(
        size: size,
      ),
      BuildPageBahan(size: size),
      BuildPageUpah(size: size),
      BuildPageAlat(size: size)
    ];
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height * 0.05,
          decoration: const BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16))),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.01,
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                width: size.width,
                height: 42,
                decoration: BoxDecoration(
                    color: neutral100,
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 1,
                          blurRadius: 5,
                          color: const Color(0xFFE6E6E6).withOpacity(0.8),
                          offset: const Offset(0, 5)),
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: FormBuilderTextField(
                  name: "search",
                  cursorColor: primary,
                  style: text2(neutral500, regular),
                  decoration: InputDecoration(
                    isDense: false,
                    icon: const Icon(
                      Icons.search,
                      color: primary,
                    ),
                    border: InputBorder.none,
                    hintText: "Ketik apa yang kamu ingin cari",
                    hintStyle: text2(neutral200, regular),
                  ),
                )),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    pages[widget.pageActive]
                  ],
                ),
              ),
            ),
          ],
        )
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
