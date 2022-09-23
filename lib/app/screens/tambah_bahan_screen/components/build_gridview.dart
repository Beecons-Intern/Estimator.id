import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../../../route/route_name.dart';
import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class BuildGridView extends StatefulWidget {
  const BuildGridView({Key? key}) : super(key: key);

  @override
  State<BuildGridView> createState() => _BuildGridViewState();
}

class _BuildGridViewState extends State<BuildGridView> {
  List<int> indexActive = [];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(
            top: 10,
            left: size.width * 0.05,
            right: size.width * 0.05,
            bottom: 80),
        itemCount: 10,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.52,
            crossAxisSpacing: 10,
            mainAxisSpacing: 16,
            crossAxisCount: 2),
        itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                color: neutral100,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 2,
                      blurRadius: 2,
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(0, 1)),
                ],
              ),
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.detailBahan);
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/img/led.jpg",
                          width: size.width,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "LED-E1-P45-E27-3W-3000K-CT-V7",
                          style: text3(neutral500, regular),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "PT Opple Lighting Indonesia",
                          style: text4(primary, regular),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const DottedLine(
                          dashColor: neutral200,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                              color: primary800,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          child: Text(
                            "Opple",
                            style: text4(neutral100, regular),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RichText(
                            text: TextSpan(
                                text: "Rp 24.000,00",
                                style: text3(accentOrange500, medium),
                                children: [
                              TextSpan(
                                  text: " / buah",
                                  style: text4(neutral500, light))
                            ])),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: primary,
                              size: 14,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Kab Sleman",
                              style: text4(primary, regular),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 5,
                      right: 5,
                      child: GestureDetector(
                        onTap: () {
                          if (indexActive.contains(index)) {
                            setState(() {
                              indexActive.remove(index);
                            });
                          } else {
                            setState(() {
                              indexActive.add(index);
                            });
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color:
                                  indexActive.contains(index) ? primary : null,
                              border: Border.all(color: primary),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                          child: Text(
                            indexActive.contains(index) ? "Dipilih" : "Pilih",
                            style: text4(
                                indexActive.contains(index)
                                    ? neutral100
                                    : primary,
                                bold),
                          ),
                        ),
                      )),
                ],
              ),
            ));
  }
}
