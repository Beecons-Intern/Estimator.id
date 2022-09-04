import 'package:estimator_id/app/utilities/text_styles.dart';
import 'package:estimator_id/app/widgets/rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utilities/colors.dart';
import '../../../widgets/build_textfields.dart';
import '../../../widgets/rounded_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            child: SizedBox(
              height: size.height * 0.5,
              width: size.width,
              child: Center(
                child: SvgPicture.asset(
                  "assets/logo/estimator_white.svg",
                  width: size.width * 0.6,
                ),
              ),
            ),
          ),
          DraggableScrollableSheet(
              initialChildSize: 0.5,
              minChildSize: 0.5,
              maxChildSize: 0.7,
              builder: (context, controller) => ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 30,
                        left: size.width * 0.05,
                        right: size.width * 0.05,
                      ),
                      color: neutral100,
                      child: SingleChildScrollView(
                        controller: controller,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Masuk",
                              style: text1(neutral500, semibold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const BuildTextField(hint: "Email"),
                            const SizedBox(
                              height: 16,
                            ),
                            const BuildTextField(
                              hint: "Password",
                              isPassword: true,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Lupa Password?",
                                style: text3(accentBrown500, regular),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            RoundedButton(
                              text: "Masuk",
                              ontap: () {},
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Text(
                                "atau gunakan akun",
                                style: text3(const Color(0xFF999999), regular),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            RoundedContainer(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assets/logo/google.svg"),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Google",
                                  style: text2(neutral500, regular),
                                )
                              ],
                            )),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "belum punya akun?",
                                  style: text3(neutral500, regular),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Daftar",
                                  style: text3(primary, regular),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )),
        ],
      ),
    );
  }
}
