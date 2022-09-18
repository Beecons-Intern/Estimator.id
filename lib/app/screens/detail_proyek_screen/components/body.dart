import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../proyek/duplikat.dart';
import 'item_anggaran_belanja.dart';
import 'item_profil_project.dart';
import 'popup_bagikan.dart';
import 'total_anggaran_belanja.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Profil Proyek",
                style: text2(neutral500, bold),
              ),
              const Icon(Icons.edit, size: 18,)
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const ItemProfilProyek(
            nama: "Nama Proyek",
            edit: "Rumah Gaya Eropa",
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemProfilProyek(
            nama: "Lokasi Proyek",
            edit: "Sleman D.I Yogyakarta",
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemProfilProyek(
            nama: "Pemilik Proyek",
            edit: "Joko Santoso",
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemProfilProyek(
            nama: "Tahun",
            edit: "2022",
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemProfilProyek(
            nama: "Jasa Kontraktor",
            edit: "10.00 %",
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemProfilProyek(
            nama: "Pajak",
            edit: "11.00 %",
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemProfilProyek(
            nama: "Dokumen Proyek",
            edit: "eropan style.xlxs",
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemProfilProyek(
            nama: "Keterangan",
            edit: "Rumahku Surgaku fix no debat",
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Rancangan Anggaran Belanja",
                style: text2(neutral500, bold),
              ),
              /* IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: (() => menuProyek(context)),
                ) */
            ],
          ),
          const SizedBox(
            height: 20,
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
                          child: Icon(analisa != null && analisa == index
                              ? Icons.arrow_drop_up_rounded
                              : Icons.arrow_drop_down_rounded),
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
          /* const ItemAnggaranBelanja(
            namaAnggaran: "Pekerjaan Persiapan",
            harga: "Rp. 115.303.500,00",
            persen: "11.5%",
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemAnggaranBelanja(
              namaAnggaran: "Pekerjaan Struktural",
              harga: "Rp. 303.950.000,00",
              persen: "30.3%"),
          const SizedBox(
            height: 10,
          ),
          const ItemAnggaranBelanja(
              namaAnggaran: "Pekerjaan Arsitektural",
              harga: "Rp. 253.700.750,00",
              persen: "25,3%"),
          const SizedBox(
            height: 10,
          ),
          const ItemAnggaranBelanja(
              namaAnggaran: "Pekerjaan MEP",
              harga: "Rp. 203.253.000,00",
              persen: "20.3%"),
          const SizedBox(
            height: 30,
          ),*/
          const SizedBox(
            height: 16,
          ),
          Text(
            "Total Anggaran Biaya",
            style: text2(neutral500, bold),
          ),
          const SizedBox(
            height: 16,
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

  Future<dynamic> menuProyek(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext contex) => AlertDialog(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.edit_note,
                  size: 24,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Edit",
                  style: text4(neutral500, medium),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.delete,
                  size: 24,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Hapus",
                  style: text4(neutral500, medium),
                )
              ],
            ),
            GestureDetector(
              onTap: (() => showDialog(
                    context: context,
                    builder: (BuildContext context) => const Duplikat(),
                  )),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.content_copy,
                    size: 24,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Duplikat",
                    style: text4(neutral500, medium),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: (() => showDialog(
                    context: context,
                    builder: (BuildContext context) => PopupBagikan(),
                  )),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.share,
                    size: 24,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Bagikan",
                    style: text4(neutral500, medium),
                  )
                ],
              ),
            ),
          ],
        ),
        alignment: Alignment.bottomCenter,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        contentPadding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
      ),
    );
  }
}
