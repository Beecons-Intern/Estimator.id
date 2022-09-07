import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import 'build_item_text_span.dart';

class BuildListView extends StatefulWidget {
  const BuildListView({Key? key, required this.size, this.isAnalisa = false})
      : super(key: key);

  final Size size;
  final bool isAnalisa;

  @override
  State<BuildListView> createState() => _BuildListViewState();
}

class _BuildListViewState extends State<BuildListView> {
  int? analisa;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: widget.size.width * 0.05,
      ),
      itemCount: 5,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: index % 2 != 0 ? null : accentGreen100,
                borderRadius: const BorderRadius.all(Radius.circular(5))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Acian Beton",
                      style: body(neutral500, bold),
                    ),
                    if (widget.isAnalisa == true) ...[
                      GestureDetector(
                        onTap: () {
                          if (analisa == null) {
                            setState(() {
                              analisa = index;
                            });
                          } else if (analisa != null && analisa == index) {
                            setState(() {
                              analisa = null;
                            });
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                              color: analisa != null && analisa == index
                                  ? accentOrange500
                                  : primary,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            children: [
                              Icon(
                                analisa != null && analisa == index
                                    ? Icons.visibility_off_rounded
                                    : Icons.visibility_rounded,
                                color: neutral100,
                              ),
                              Text(
                                "Analisa",
                                style: text4(neutral100, medium),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ],
                ),
                const Divider(
                  color: neutral200,
                  thickness: 1,
                ),
                RichText(
                    text: TextSpan(
                        text: "Satuan : ",
                        style: text3(neutral500, medium),
                        children: [
                      TextSpan(text: "m2", style: text3(neutral500, light))
                    ])),
                const SizedBox(
                  height: 5,
                ),
                RichText(
                    text: TextSpan(
                        text: "Sumber : ",
                        style: text3(neutral500, medium),
                        children: [
                      TextSpan(
                          text:
                              "AHSP SNI Data Pembaharuan dan Penyesuaian 2017-2018",
                          style: text3(neutral500, light))
                    ])),
              ],
            ),
          ),
          if (widget.isAnalisa == true) ...[
            if (analisa != null && analisa == index) ...[
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(
                        horizontal: widget.size.width * 0.03),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, indexExpanded) => Container(
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: indexExpanded % 2 == 0
                                  ? accentYellow100
                                  : null,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (indexExpanded == 0) ...[
                                Text(
                                  "A. BAHAN",
                                  style: body(neutral500, bold),
                                ),
                              ] else if (indexExpanded == 1) ...[
                                Text(
                                  "B. UPAH",
                                  style: body(neutral500, bold),
                                ),
                              ] else ...[
                                Text(
                                  "C. ALAT",
                                  style: body(neutral500, bold),
                                ),
                              ],
                              Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                child: ListView.builder(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: widget.size.width * 0.03),
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 3,
                                    itemBuilder: (context, indexItem) =>
                                        Container(
                                          padding: const EdgeInsets.all(5),
                                          margin:
                                              const EdgeInsets.only(bottom: 5),
                                          decoration: BoxDecoration(
                                              color: indexItem % 2 == 0 &&
                                                      indexExpanded % 2 == 0
                                                  ? neutral100
                                                  : indexItem % 2 != 0 &&
                                                          indexExpanded % 2 == 0
                                                      ? null
                                                      : indexItem % 2 == 0
                                                          ? accentYellow200
                                                          : null,
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(5))),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              BuildTextItemSpan(
                                                title: "Nama : ",
                                                text: "Semen portland",
                                              ),
                                              BuildTextItemSpan(
                                                title: "Koefisien : ",
                                                text: "0.0650",
                                              ),
                                              BuildTextItemSpan(
                                                title: "Satuan : ",
                                                text: "kg",
                                              ),
                                              BuildTextItemSpan(
                                                title: "Merk : ",
                                                text: "-",
                                              ),
                                              BuildTextItemSpan(
                                                title: "Spesifikasi : ",
                                                text: "-",
                                              ),
                                            ],
                                          ),
                                        )),
                              )
                            ],
                          ),
                        )),
              )
            ],
          ],
        ],
      ),
    );
  }
}
