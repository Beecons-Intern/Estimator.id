import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset(
          "assets/img/led.jpg",
          height: size.height * 0.35,
          width: size.width,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(
                top: 40, left: size.width * 0.05, right: size.width * 0.05),
            decoration: const BoxDecoration(
              color: accentGreen100,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "LED-E1-P45-E27-3W-3000K-CT-V7",
                    style: text2(neutral500, bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Opple",
                      style: text3(neutral100, regular),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const DottedLine(
                    dashColor: neutral300,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text.rich(TextSpan(
                      text: "Rp24.000,00",
                      style: text2(accentOrange500, bold),
                      children: [
                        TextSpan(
                            text: " / buah", style: text4(neutral500, light))
                      ])),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_pin,
                        color: primary,
                        size: 16,
                      ),
                      Text(
                        "Kab Aceh Selatan",
                        style: text4(primary, regular),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "LED Blub EcoMax",
                    style: text4(neutral500, regular),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "LED-P-HPB-E40-90W-4000K-70D-CT",
                    style: text4(neutral500, regular),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const DottedLine(
                    dashColor: neutral300,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "PT Opple Lighting Indonesia",
                    style: text4(neutral500, regular),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Opple merupakan perusahaan lighting multinational terbesar di China yang memiliki fasilitas pabrikasi terbesar di China dan sudah beroperasi di 70 negara.",
                    textAlign: TextAlign.justify,
                    style: text4(neutral500, regular),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
