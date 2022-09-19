import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../../widgets/rounded_button.dart';
import '../../../widgets/total_anggaran_belanja.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final items = ["Edit AHS", "Edit Volume", "Copy", "Duplikat", "Hapus"];
  int? analisa;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                  decoration: BoxDecoration(
                      color: primary, borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.edit,
                        color: neutral100,
                        size: 16,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Ubah Kategori",
                        style: text3(neutral100, regular),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text(
                          "Impor Volume",
                          style: text2(neutral500, semibold),
                          textAlign: TextAlign.center,
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                text: "belum memiliki template?",
                                style: text4(neutral500, regular),
                                children: [
                                  TextSpan(
                                    text: " unduh template",
                                    style: text4(primary, regular),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            DottedBorder(
                              borderType: BorderType.RRect,
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.15,
                                  vertical: size.height * 0.1),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 2, vertical: 5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: primary,
                                )),
                                child: Text(
                                  "Unggah template volume",
                                  textAlign: TextAlign.center,
                                  style: text4(neutral500, regular),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Jika anda melakukan impor, seluruh rincian volume pekerjaan yang telah dimasukan sebelumnya akan terhapus dan digantikan dengan volume dari file template.",
                              style: text4(neutral500, regular),
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Peringatan! Pastikan Andan telah melakukan backup rincian volume sebelumnya!",
                                    style: text4(accentOrange500, regular),
                                    textAlign: TextAlign.justify,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 16),
                            RoundedButton(
                              ontap: () {},
                              text: "Impor Volume",
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                    decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.upload,
                          color: neutral100,
                          size: 16,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Impor Volume",
                          style: text3(neutral100, regular),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          ListView.separated(
            itemCount: 4,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          "Pekerjaan Persiapan",
                          style: body(neutral500, regular),
                        ),
                      ),
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.add,
                              size: 16,
                            ),
                            GestureDetector(
                              onTap: () {
                                if (analisa == null) {
                                  setState(() {
                                    analisa = index;
                                  });
                                } else if (analisa != null &&
                                    analisa == index) {
                                  setState(() {
                                    analisa = null;
                                  });
                                }
                              },
                              child: Icon(analisa != null && analisa == index
                                  ? Icons.arrow_drop_up_rounded
                                  : Icons.arrow_drop_down_rounded),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                if (analisa != null && analisa == index) ...[
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, indexExpanded) => Container(
                        margin: const EdgeInsets.symmetric(vertical: 6),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: neutral200, width: 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: Row(
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
                                                    style: text2(
                                                        neutral500, semibold),
                                                  ),
                                                  const Divider(
                                                    thickness: 2,
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Nama",
                                                        style: text3(neutral500,
                                                            regular),
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          "Pengukuran dan pemasangan Bouwplank",
                                                          style: text3(
                                                              neutral500,
                                                              medium),
                                                          textAlign:
                                                              TextAlign.end,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 8,
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Volume",
                                                        style: text3(neutral500,
                                                            regular),
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          "121.00",
                                                          style: text3(
                                                              neutral500,
                                                              medium),
                                                          textAlign:
                                                              TextAlign.end,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Satuan",
                                                        style: text3(neutral500,
                                                            regular),
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          "m1",
                                                          style: text3(
                                                              neutral500,
                                                              medium),
                                                          textAlign:
                                                              TextAlign.end,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Harga Satuan",
                                                        style: text3(neutral500,
                                                            regular),
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          "Rp 124.983,57",
                                                          style: text3(
                                                              neutral500,
                                                              medium),
                                                          textAlign:
                                                              TextAlign.end,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Harga",
                                                        style: text3(neutral500,
                                                            regular),
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          "Rp 15.123.012,14",
                                                          style: text3(
                                                              neutral500,
                                                              medium),
                                                          textAlign:
                                                              TextAlign.end,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "%",
                                                        style: text3(neutral500,
                                                            regular),
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          "100.00 %",
                                                          style: text3(
                                                              neutral500,
                                                              medium),
                                                          textAlign:
                                                              TextAlign.end,
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
                                                      style: text2(
                                                          neutral500, regular),
                                                    ),
                                                  );
                                                },
                                                separatorBuilder:
                                                    (context, index) =>
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
                      ),
                    ),
                  )
                ],
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const TotalAnggaranBelanja(
            totalName: "Jumlah Harga",
            harga: "Rp. 876.107.550,00",
          ),
          const SizedBox(
            height: 10,
          ),
          const TotalAnggaranBelanja(
              totalName: "PPN 11%", harga: "Rp.96.371.830,50"),
          const SizedBox(
            height: 10,
          ),
          const TotalAnggaranBelanja(
              totalName: "Total Harga", harga: "972.379.380,50"),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
