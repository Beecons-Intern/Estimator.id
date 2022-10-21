import 'package:estimator_id/presentation/view_model/koleksi_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../utilities/utilities.dart';

class BuildListView extends StatefulWidget {
  const BuildListView(
      {Key? key,
      required this.size,
      this.ahs = false,
      required this.valueKoleksi,
      this.index = 0})
      : super(key: key);

  final Size size;
  final bool ahs;
  final int valueKoleksi;
  final int index;

  @override
  State<BuildListView> createState() => _BuildListViewState();
}

class _BuildListViewState extends State<BuildListView> {
  int? analisa;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Future.wait([
        Provider.of<KoleksiViewModel>(context, listen: false).getAhs(),
        Provider.of<KoleksiViewModel>(context, listen: false).getBahan(),
      ]);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final Future<String> _loadData =
    //     Future<String>.delayed(const Duration(milliseconds: 1));
    final koleksiViewModel =
        Provider.of<KoleksiViewModel>(context, listen: false);
    final data = koleksiViewModel.getAhs();
    // print("value koleksi${widget.valueKoleksi}");
    print(koleksiViewModel.bahanUtama);

    final koleksiSelected;
    switch (widget.index) {
      case 0:
        koleksiSelected = koleksiViewModel.ahsUtama != null &&
                koleksiViewModel.ahsUtama!.isNotEmpty
            ? koleksiViewModel.ahsUtama!.length
            : 0;
        break;
      case 1:
        koleksiSelected = koleksiViewModel.bahanUtama != null &&
                koleksiViewModel.bahanUtama!.isNotEmpty
            ? koleksiViewModel.bahanUtama!.length
            : 0;
        break;
      default:
    }

    return ListView.separated(
      padding: EdgeInsets.symmetric(
        horizontal: widget.size.width * 0.05,
      ),
      itemCount: widget.valueKoleksi,
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
                        // "Ahli K3 konstruksi madya selaku pimpinan UKK (personil manajerial) - K3 Gedung",
                        koleksiViewModel.ahsUtama != null
                            ? koleksiViewModel.ahsUtama![index].namaPekerjaan
                            : "",
                        style: text3(neutral500, regular),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        // "m2",
                        koleksiViewModel.ahsUtama != null
                            ? koleksiViewModel.ahsUtama![index].satuanPekerjaan
                            : "",
                        style: text3(neutral500, regular),
                      ),
                    ),
                    Flexible(
                      child: GestureDetector(
                        onTap: () {
                          if (analisa == index) {
                            setState(() {
                              analisa = null;
                            });
                          } else {
                            setState(() {
                              analisa = index;
                            });
                          }
                        },
                        child: Icon(
                          analisa != null && analisa == index
                              ? Icons.visibility_off_rounded
                              : Icons.visibility_rounded,
                          color: analisa != null && analisa == index
                              ? accentOrange500
                              : primary,
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
                                  style: text3(neutral500, bold),
                                ),
                              ] else if (indexExpanded == 1) ...[
                                Text(
                                  "B. UPAH",
                                  style: text3(neutral500, bold),
                                ),
                              ] else ...[
                                Text(
                                  "C. ALAT",
                                  style: text3(neutral500, bold),
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
                                                // "Semen Portland",
                                                koleksiViewModel.bahanUtama !=
                                                        null
                                                    ? koleksiViewModel
                                                        .bahanUtama![index]
                                                        .namaBahan
                                                    : "",
                                                style:
                                                    text4(neutral500, regular),
                                              )),
                                          Expanded(
                                            child: Text(
                                                // "0.0650",
                                                koleksiViewModel.bahanUtama !=
                                                        null
                                                    ? koleksiViewModel
                                                        .bahanUtama![index]
                                                        .satuan
                                                        .toString()
                                                    : "",
                                                style:
                                                    text4(neutral500, regular)),
                                          ),
                                          Expanded(
                                            child: Text(
                                                // "kg",
                                                "",
                                                style:
                                                    text4(neutral500, regular)),
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
                                                              style: text3(
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
                                                                  style: text4(
                                                                      neutral500,
                                                                      regular),
                                                                ),
                                                                Text(
                                                                  "Semen portland",
                                                                  style: text4(
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
                                                                  style: text4(
                                                                      neutral500,
                                                                      regular),
                                                                ),
                                                                Text(
                                                                  "0.0650",
                                                                  style: text4(
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
                                                                  style: text4(
                                                                      neutral500,
                                                                      regular),
                                                                ),
                                                                Text(
                                                                  "Kg",
                                                                  style: text4(
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
                                                                  style: text4(
                                                                      neutral500,
                                                                      regular),
                                                                ),
                                                                Text(
                                                                  "Holcim",
                                                                  style: text4(
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
                                                                  style: text4(
                                                                      neutral500,
                                                                      regular),
                                                                ),
                                                                Text(
                                                                  "Standar",
                                                                  style: text4(
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
                                                // "Kepala Tukang Batu",
                                                koleksiViewModel.ahsUtama !=
                                                        null
                                                    ? koleksiViewModel
                                                        .ahsUtama![index]
                                                        .namaKategori
                                                    : "",
                                                style:
                                                    text4(neutral500, regular),
                                              )),
                                          Expanded(
                                            child: Text(
                                                // "0.0100",
                                                koleksiViewModel.ahsUtama !=
                                                        null
                                                    ? koleksiViewModel
                                                        .ahsUtama![index]
                                                        .koefisien
                                                        .toString()
                                                    : "",
                                                style:
                                                    text4(neutral500, regular)),
                                          ),
                                          Expanded(
                                            child: Text("OH",
                                                style:
                                                    text4(neutral500, regular)),
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
                                                    text4(neutral500, regular),
                                              )),
                                          Expanded(
                                            child: Text("1.0000",
                                                style:
                                                    text4(neutral500, regular)),
                                          ),
                                          Expanded(
                                            child: Text("OB",
                                                style:
                                                    text4(neutral500, regular)),
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
