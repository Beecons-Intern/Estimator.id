import 'package:estimator_id/app/utilities/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import 'card_estimasi_anggaran.dart';

class CardExpandedTile extends StatefulWidget {
  const CardExpandedTile({
    Key? key,
    required this.size,
    this.isSelected = false,
  }) : super(key: key);

  final Size size;
  final bool isSelected;

  @override
  State<CardExpandedTile> createState() => _CardExpandedTileState();
}

class _CardExpandedTileState extends State<CardExpandedTile> {
  int? anggaran;

  @override
  Widget build(BuildContext context) {
    final items = ["Edit AHS", "Edit Volume", "Copy", "Duplikat", "Hapus"];
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: ((context, index) => Container(
            padding: const EdgeInsets.all(6),
            color: index % 2 == 0 ? accentGreen100 : null,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Pekerjaan Persiapan",
                      style: text3(neutral500, medium),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.add,
                          size: 16,
                        ),
                        GestureDetector(
                          onTap: (() => showDialog(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color:
                                                Color.fromRGBO(218, 146, 16, 1),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Icon(
                                        Icons.clear,
                                        size: 12,
                                        color: Color.fromRGBO(218, 146, 16, 1),
                                      ),
                                    ),
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: size.height * 0.01),
                                        child: const Text(
                                          "HAPUS PEKERJAAN ?",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromRGBO(
                                                  234, 24, 35, 1)),
                                        ),
                                      ),
                                      RichText(
                                        text: const TextSpan(
                                          text:
                                              "Yakin Anda akan menghapus pekerjaan",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 85, 84, 84)),
                                          children: [
                                            TextSpan(
                                              text:
                                                  " pada kategori pekerjaan persiapan?",
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                      SizedBox(height: size.height * 0.02),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.warning,
                                            size: 25,
                                            color: Color.fromRGBO(
                                                183, 22, 32, 0.7),
                                          ),
                                          Text(
                                            " Peringatan!",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    183, 22, 32, 1)),
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      const Text(
                                        "Semua rincian yang berkaitan dengan pekerjaan tersebut akan ikut terhapus.",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                        ),
                                        textAlign: TextAlign.justify,
                                      )
                                    ],
                                  ),
                                ),
                              )),
                          child: const Icon(
                            Icons.delete,
                            size: 16,
                          ),
                        ),
                        if (widget.isSelected == true) ...[
                          GestureDetector(
                            onTap: () {
                              if (anggaran == null) {
                                setState(() {
                                  anggaran = index;
                                });
                              } else if (anggaran != null &&
                                  anggaran == index) {
                                setState(() {
                                  anggaran = null;
                                });
                              }
                            },
                            child: Icon(
                              anggaran != null && anggaran == index
                                  ? Icons.arrow_drop_up
                                  : Icons.arrow_drop_down,
                              color: anggaran != null && anggaran == index
                                  ? neutral500
                                  : neutral500,
                            ),
                          )
                        ]
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text("Harga", style: text3(primary, regular))),
                    Expanded(
                      flex: 3,
                      child: Text(
                        "Rp. 1.900.000",
                        style: text3(primary, regular),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child:
                            Text("%", style: text3(accentBrown500, regular))),
                    Expanded(
                      flex: 3,
                      child: Text(
                        "100.00%",
                        style: text3(accentBrown500, regular),
                      ),
                    ),
                  ],
                ),
                if (anggaran != null && anggaran == index) ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 2,
                          child: Text(
                            "Pengukuran dan pemasangan Bouwplank",
                            style: text3(neutral500, regular),
                          )),
                      Flexible(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        content: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              "Detail",
                                              style:
                                                  text2(neutral500, semibold),
                                            ),
                                            const Divider(
                                              thickness: 2,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Nama",
                                                  style: text3(
                                                      neutral500, regular),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    "Pengukuran dan pemasangan Bouwplank",
                                                    style: text3(
                                                        neutral500, medium),
                                                    textAlign: TextAlign.end,
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Volume",
                                                  style: text3(
                                                      neutral500, regular),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    "121.00",
                                                    style: text3(
                                                        neutral500, medium),
                                                    textAlign: TextAlign.end,
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Satuan",
                                                  style: text3(
                                                      neutral500, regular),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    "m1",
                                                    style: text3(
                                                        neutral500, medium),
                                                    textAlign: TextAlign.end,
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Harga Satuan",
                                                  style: text3(
                                                      neutral500, regular),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    "Rp 124.983,57",
                                                    style: text3(
                                                        neutral500, medium),
                                                    textAlign: TextAlign.end,
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Harga",
                                                  style: text3(
                                                      neutral500, regular),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    "Rp 15.123.012,14",
                                                    style: text3(
                                                        neutral500, medium),
                                                    textAlign: TextAlign.end,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "%",
                                                  style: text3(
                                                      neutral500, regular),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    "100.00 %",
                                                    style: text3(
                                                        neutral500, medium),
                                                    textAlign: TextAlign.end,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ));
                            },
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border.all(color: primary),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5))),
                              child: Text(
                                "Detail",
                                style: text4(neutral500, bold),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10))),
                                  context: context,
                                  builder: (context) => Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 20),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.05),
                                      child: ListView.separated(
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            return GestureDetector(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                items[index],
                                                style:
                                                    text2(neutral500, regular),
                                              ),
                                            );
                                          },
                                          separatorBuilder: (context, index) =>
                                              const Divider(
                                                thickness: 1,
                                              ),
                                          itemCount: items.length)));
                            },
                            child: Container(
                              margin: const EdgeInsets.only(left: 5),
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border.all(color: primary),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5))),
                              child: const Icon(
                                Icons.settings,
                                size: 15,
                              ),
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                  // CardEstimasiAnggaran(size: size)
                ],
                // const Divider(thickness: 2),
              ],
            ),
          )),
    );
  }
}
