import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class BuildCardPoin extends StatelessWidget {
  const BuildCardPoin(
      {Key? key, required this.text, required this.assets, required this.onTap})
      : super(key: key);

  final String text;
  final String assets;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: primary,
          border: Border.all(color: primary, width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          Expanded(flex: 1, child: SvgPicture.asset(assets)),
          Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                    color: neutral100,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: text2(neutral300, medium),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/icon/koin.png",
                          width: 24,
                        ),
                        Text(
                          "200 - 600 Poin",
                          style: text2(neutral300, medium),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const DottedLine(
                      direction: Axis.horizontal,
                      lineLength: double.infinity,
                      lineThickness: 1,
                      dashLength: 5,
                      dashColor: neutral300,
                    ),
                    GestureDetector(
                      onTap: onTap,
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        child: Center(
                          child: Text(
                            "Tukarkan",
                            style: text2(primary, bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
