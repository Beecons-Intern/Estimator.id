import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../../widgets/rounded_button.dart';

class BuildChoosePrice extends StatelessWidget {
  const BuildChoosePrice({
    Key? key,
    required this.size,
    required this.selectedIndex,
  }) : super(key: key);

  final Size size;
  final int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: size.width,
            decoration: const BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nama Pelanggan",
                      style: text4(neutral100, regular),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Anton Sanjaya",
                      style: text2(neutral100, bold),
                    ),
                    Text(
                      "0987 0875 09871",
                      style: text4(neutral100, regular),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tarif / Daya",
                      style: text4(neutral100, regular),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "R1 / 1400VA",
                      style: text2(neutral100, bold),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              width: size.width,
              child: GridView.builder(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05, vertical: 10),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 2.3),
                  itemBuilder: (context, index) => GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            color: neutral100,
                            border:
                                selectedIndex != null && selectedIndex == index
                                    ? Border.all(color: primary, width: 2)
                                    : null,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  color:
                                      const Color(0xFFE6E6E6).withOpacity(0.8),
                                  offset: const Offset(0, 1)),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/icon/koin.png",
                                width: 36,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Rp 50.000",
                                      style: text2(neutral500, bold)),
                                  Text(
                                    "800 Poin",
                                    style: text3(neutral500, semibold),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ))),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: RoundedButton(
              ontap: () {
                showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    context: context,
                    builder: (context) {
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                "Detail Penerima",
                                style: text2(neutral500, bold),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Nama Pelanggan",
                                    style: text3(neutral500, regular),
                                  ),
                                  Text(
                                    "Anton Sanjaya",
                                    style: text3(neutral500, regular),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Nomor Token",
                                    style: text3(neutral500, regular),
                                  ),
                                  Text(
                                    "0987 0875 09871",
                                    style: text3(neutral500, regular),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Divider(
                              color: neutral200.withOpacity(0.5),
                              thickness: 4,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                "Detail Pembayaran",
                                style: text2(neutral500, bold),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Harga Token Listrik",
                                    style: text3(neutral500, regular),
                                  ),
                                  Text(
                                    "Rp 50.000",
                                    style: text3(neutral500, regular),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: DottedLine(
                                dashColor: neutral200.withOpacity(0.8),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Total Poin Yang Ditukarkan",
                                    style: text3(neutral500, bold),
                                  ),
                                  Text(
                                    "800 Poin",
                                    style: text3(neutral500, bold),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
              text: "Tukar",
            ),
          )
        ],
      ),
    );
  }
}
