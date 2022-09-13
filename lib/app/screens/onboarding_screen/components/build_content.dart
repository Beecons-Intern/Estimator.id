import 'package:flutter/material.dart';

import '../../../route/route_name.dart';
import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../../widgets/outline_button.dart';
import '../../../widgets/rounded_button.dart';

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
      padding: EdgeInsets.only(
          top: 20, left: size.width * 0.05, right: size.width * 0.05),
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
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                    bottom: isLast == true ? 62 : 10,
                    left: 0,
                    right: 0,
                    child: RoundedButton(
                      text: isLast == true ? "Masuk" : "Lanjutkan",
                      ontap: ontap,
                    )),
                if (isLast == true) ...[
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: OutlineButton(
                      text: "Daftar",
                      ontap: () {
                        Navigator.pushReplacementNamed(
                            context, RouteName.registerScreen);
                      },
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
