import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utilities/utilities.dart';
import '../../../route/route_name.dart';
import 'build_content.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  PageController controller = PageController();
  int index = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          SvgPicture.asset("assets/logo/estimator_white.svg"),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            flex: 6,
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller,
              children: [
                BuildContent(
                  size: size,
                  subtitle:
                      "Buat RAB onlinemu dengan dukungan database harga terbaru dan pembaharuan secara realtime",
                  image: "assets/logo/1.svg",
                ),
                BuildContent(
                  size: size,
                  subtitle:
                      "Seluruh data proyek yang telah dibuat dapat dengan mudah digunakan kembali untuk proyek lainnya",
                  image: "assets/logo/2.svg",
                ),
                BuildContent(
                  size: size,
                  subtitle:
                      "Membuat RAB kapanpun di manapun secara online dan gratis. Ayo gabung sekarang!",
                  image: "assets/logo/3.svg",
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, RouteName.welcome);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 16),
                    decoration: BoxDecoration(
                      color: neutral100,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(0, 1)),
                      ],
                    ),
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                          color: primary, fontSize: 14, fontWeight: semibold),
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const JumpingDotEffect(
                      spacing: 5,
                      dotColor: Color(0xFFBCBCBC),
                      activeDotColor: neutral100,
                      dotWidth: 8,
                      dotHeight: 8),
                ),
                GestureDetector(
                  onTap: () {
                    switch (index) {
                      case 0:
                        setState(() {
                          index++;
                        });

                        controller.animateToPage(index,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                        break;
                      case 1:
                        setState(() {
                          index++;
                        });

                        controller.animateToPage(index,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                        break;
                      case 2:
                        Navigator.pushReplacementNamed(
                            context, RouteName.welcome);
                        break;
                      default:
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 16),
                    decoration: BoxDecoration(
                      color: neutral100,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(0, 1)),
                      ],
                    ),
                    child: const Text(
                      "Next",
                      style: TextStyle(
                          color: primary, fontSize: 14, fontWeight: semibold),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
