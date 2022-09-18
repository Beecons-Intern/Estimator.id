import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
        child: Column(
      children: [
        SizedBox(
          height: size.height * 0.5,
          width: size.width,
          child: Center(
            child: SvgPicture.asset(
              "assets/logo/estimator_white.svg",
              width: size.width * 0.6,
            ),
          ),
        ),
        Expanded(
            child: Container(
          width: size.width,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30, left: size.width * 0.05),
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                      spacing: 5,
                      dotColor: Color(0xFFD0D0D0),
                      activeDotColor: Color(0xFFDA9210),
                      dotWidth: 8,
                      dotHeight: 8),
                ),
              ),
              Expanded(
                child: PageView(
                  controller: controller,
                  children: [
                    BuildContent(
                      size: size,
                      title: "Halo! Selamat datang di Estimator.id",
                      subtitle:
                          "Buat RAB onlinemu dengan dukungan database harga terbaru dan pembaharuan secara realtime",
                      ontap: () {
                        if (index == 0) {
                          setState(() {
                            index++;
                          });

                          controller.animateToPage(index,
                              duration: const Duration(seconds: 1),
                              curve: Curves.easeIn);
                        } else {
                          setState(() {
                            index = 1;
                          });
                          controller.animateToPage(index,
                              duration: const Duration(seconds: 1),
                              curve: Curves.easeIn);
                        }
                      },
                    ),
                    BuildContent(
                      size: size,
                      title: "Nikmati berbagai fitur menarik",
                      subtitle:
                          "Seluruh data proyek yang telah dibuat dapat dengan mudah digunakan kembali untuk proyek lainnya",
                      ontap: () {
                        if (index == 1) {
                          setState(() {
                            index++;
                          });

                          controller.animateToPage(index,
                              duration: const Duration(seconds: 1),
                              curve: Curves.easeIn);
                        } else {
                          setState(() {
                            index = 2;
                          });
                          controller.animateToPage(index,
                              duration: const Duration(seconds: 1),
                              curve: Curves.easeIn);
                        }
                      },
                    ),
                    BuildContent(
                      size: size,
                      title: "Temukan kemudahan perancangan RAB",
                      subtitle:
                          "Membuat RAB kapanpun di manapun secara online dan gratis. Ayo gabung sekarang!",
                      isLast: true,
                      ontap: () {
                        Navigator.pushReplacementNamed(
                            context, RouteName.loginScreen);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ))
      ],
    ));
  }
}
