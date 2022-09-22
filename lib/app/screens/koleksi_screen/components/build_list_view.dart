import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class BuildListView extends StatefulWidget {
  const BuildListView({Key? key, required this.size, this.ahs = false})
      : super(key: key);

  final Size size;
  final bool ahs;

  @override
  State<BuildListView> createState() => _BuildListViewState();
}

class _BuildListViewState extends State<BuildListView> {
  int? analisa;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(
        horizontal: widget.size.width * 0.05,
      ),
      itemCount: 100,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const Divider(thickness: 1),
      itemBuilder: (context, index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: index % 2 != 0 ? null : accentGreen100,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Ahli K3 konstruksi madya selaku pimpinan UKK (personil manajerial) - K3 Gedung",
                        style: body(neutral500, regular),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        "m2",
                        style: body(neutral500, regular),
                      ),
                    ),
                    Flexible(
                      child: GestureDetector(
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                              color: analisa != null && analisa == index
                                  ? accentOrange500
                                  : primary,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(16))),
                          child: Icon(
                            analisa != null && analisa == index
                                ? Icons.visibility_off_rounded
                                : Icons.visibility_rounded,
                            color: neutral100,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          if (analisa != null && analisa == index) ...[
            if (widget.ahs == true) ...[
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, indexExpanded) => Container(
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
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
                                width: widget.size.width,
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.only(bottom: 5),
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: neutral200, width: 1),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              flex: 2,
                                              child: Text(
                                                "Semen Portland",
                                                style:
                                                    text3(neutral500, regular),
                                              )),
                                          Expanded(
                                            child: Text("0.0650",
                                                style:
                                                    text3(neutral500, regular)),
                                          ),
                                          Expanded(
                                            child: Text("kg",
                                                style:
                                                    text3(neutral500, regular)),
                                          ),
                                          Flexible(
                                              child: GestureDetector(
                                            onTap: () {
                                              showDialog(
                                                  context: context,
                                                  builder: (context) =>
                                                      AlertDialog(
                                                        content: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Text(
                                                              "Detail",
                                                              style: text2(
                                                                  neutral500,
                                                                  semibold),
                                                            ),
                                                            const Divider(
                                                              thickness: 2,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  "Nama",
                                                                  style: text3(
                                                                      neutral500,
                                                                      regular),
                                                                ),
                                                                Text(
                                                                  "Semen portland",
                                                                  style: text3(
                                                                      neutral500,
                                                                      semibold),
                                                                )
                                                              ],
                                                            ),
                                                            const SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  "Koefisien",
                                                                  style: text3(
                                                                      neutral500,
                                                                      regular),
                                                                ),
                                                                Text(
                                                                  "0.0650",
                                                                  style: text3(
                                                                      neutral500,
                                                                      semibold),
                                                                )
                                                              ],
                                                            ),
                                                            const SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  "Satuan",
                                                                  style: text3(
                                                                      neutral500,
                                                                      regular),
                                                                ),
                                                                Text(
                                                                  "Kg",
                                                                  style: text3(
                                                                      neutral500,
                                                                      semibold),
                                                                )
                                                              ],
                                                            ),
                                                            const SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  "Merk",
                                                                  style: text3(
                                                                      neutral500,
                                                                      regular),
                                                                ),
                                                                Text(
                                                                  "Holcim",
                                                                  style: text3(
                                                                      neutral500,
                                                                      semibold),
                                                                )
                                                              ],
                                                            ),
                                                            const SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  "Spesifikasi",
                                                                  style: text3(
                                                                      neutral500,
                                                                      regular),
                                                                ),
                                                                Text(
                                                                  "Standar",
                                                                  style: text3(
                                                                      neutral500,
                                                                      semibold),
                                                                )
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      ));
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.all(5),
                                              decoration: const BoxDecoration(
                                                  color: primary,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5))),
                                              child: Text(
                                                "Detail",
                                                style: text4(neutral100, bold),
                                              ),
                                            ),
                                          ))
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: neutral200, width: 1),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                              flex: 2,
                                              child: Text(
                                                "Kepala Tukang Batu",
                                                style:
                                                    text3(neutral500, regular),
                                              )),
                                          Expanded(
                                            child: Text("0.0100",
                                                style:
                                                    text3(neutral500, regular)),
                                          ),
                                          Expanded(
                                            child: Text("OH",
                                                style:
                                                    text3(neutral500, regular)),
                                          ),
                                          Flexible(
                                              child: Container(
                                            padding: const EdgeInsets.all(5),
                                            decoration: const BoxDecoration(
                                                color: primary,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5))),
                                            child: Text(
                                              "Detail",
                                              style: text4(neutral100, bold),
                                            ),
                                          ))
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: neutral200, width: 1),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                              flex: 2,
                                              child: Text(
                                                "Ahli K3 konstruksi madya",
                                                style:
                                                    text3(neutral500, regular),
                                              )),
                                          Expanded(
                                            child: Text("1.0000",
                                                style:
                                                    text3(neutral500, regular)),
                                          ),
                                          Expanded(
                                            child: Text("OB",
                                                style:
                                                    text3(neutral500, regular)),
                                          ),
                                          Flexible(
                                              child: Container(
                                            padding: const EdgeInsets.all(5),
                                            decoration: const BoxDecoration(
                                                color: primary,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5))),
                                            child: Text(
                                              "Detail",
                                              style: text4(neutral100, bold),
                                            ),
                                          ))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
              )
            ] else ...[
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Detail",
                        style: body(neutral500, bold),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(color: neutral200, width: 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Nama",
                                  style: text4(neutral500, semibold),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                    child: Text(
                                  "AC Ceiling Cassette 3 PK Type ACK 30+AMC 30 Daikin",
                                  style: text4(neutral500, regular),
                                  textAlign: TextAlign.end,
                                ))
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Satuan",
                                  style: text4(neutral500, semibold),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                    child: Text(
                                  "liter",
                                  style: text4(neutral500, regular),
                                  textAlign: TextAlign.end,
                                ))
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Harga",
                                  style: text4(neutral500, semibold),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                    child: Text(
                                  "Rp 20.360.000,00",
                                  style: text4(neutral500, regular),
                                  textAlign: TextAlign.end,
                                ))
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Merk",
                                  style: text4(neutral500, semibold),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                    child: Text(
                                  "Standar",
                                  style: text4(neutral500, regular),
                                  textAlign: TextAlign.end,
                                ))
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Spesifikasi",
                                  style: text4(neutral500, semibold),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                    child: Text(
                                  "Standar",
                                  style: text4(neutral500, regular),
                                  textAlign: TextAlign.end,
                                ))
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sumber",
                                  style: text4(neutral500, semibold),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                    child: Text(
                                  "Pergub No 55 Tahun 2019",
                                  style: text4(neutral500, regular),
                                  textAlign: TextAlign.end,
                                ))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ]
          ],
        ],
      ),
    );
  }
}
