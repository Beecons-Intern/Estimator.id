import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class BuildContent extends StatelessWidget {
  const BuildContent(
      {Key? key,
      required this.size,
      required this.title,
      required this.subtitle,
      this.isLast = false,
      required this.ontap})
      : super(key: key);

  final Size size;
  final String title;
  final String subtitle;
  final bool isLast;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(vertical: 20, horizontal: size.width * 0.05),
      child: Column(
        children: [
          Text(
            title,
            style: heading4(neutral500, semibold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            subtitle,
            style: body(neutral500, regular),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  bottom: isLast == true ? 60 : 0,
                  left: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: ontap,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: const BoxDecoration(
                          color: Color(0xFF089E14),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                        child: Text(
                          isLast == true ? "Masuk" : "Lanjutkan",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: semibold),
                        ),
                      ),
                    ),
                  ),
                ),
                if (isLast == true) ...[
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xFF089E14), width: 3),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: const Center(
                          child: Text(
                            "Daftar",
                            style: TextStyle(
                                color: Color(0xFF089E14),
                                fontSize: 14,
                                fontWeight: semibold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]
              ],
            ),
          )
        ],
      ),
    );
  }
}
