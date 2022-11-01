import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../utilities/utilities.dart';
import '../../../../view_model/ahs_utama_view_model.dart';

class BuildListViewAHS extends StatefulWidget {
  const BuildListViewAHS(
      {Key? key, required this.size, required this.ahasUtamaViewModel})
      : super(key: key);

  final Size size;
  final AHSUtamaViewModel ahasUtamaViewModel;

  @override
  State<BuildListViewAHS> createState() => _BuildListViewAHSState();
}

class _BuildListViewAHSState extends State<BuildListViewAHS> {
  final controller = ScrollController();
  int? analisa;
  int start = 10;
  int lenght = 20;
  bool hasMore = true;

  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset &&
          hasMore == true) {
        Provider.of<AHSUtamaViewModel>(context, listen: false)
            .updateData(start, lenght)
            .then((value) {
          setState(() {
            start += 10;
            lenght += 10;
            hasMore = value;
          });
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        controller: controller,
        padding: EdgeInsets.symmetric(
          horizontal: widget.size.width * 0.05,
        ),
        itemCount: widget.ahasUtamaViewModel.dataPekerjaanUtamaTemp != null
            ? widget.ahasUtamaViewModel.dataPekerjaanUtamaTemp!.length +
                (widget.ahasUtamaViewModel.isSearching == false ? 1 : 0)
            : 0,
        shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => const Divider(thickness: 1),
        itemBuilder: (context, index) {
          if (index <
              widget.ahasUtamaViewModel.dataPekerjaanUtamaTemp!.length) {
            return Column(
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
                              widget.ahasUtamaViewModel
                                  .dataPekerjaanUtamaTemp![index].namaPekerjaan,
                              style: text3(neutral500, regular),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              widget.ahasUtamaViewModel
                                  .dataPekerjaanUtamaTemp![index].satuan,
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
                                  widget.ahasUtamaViewModel.getDatasAHS(widget
                                      .ahasUtamaViewModel
                                      .dataPekerjaanUtamaTemp![index]
                                      .idPekerjaan);
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
                  ListView.builder(
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
                                  Container(
                                    width: widget.size.width,
                                    padding: const EdgeInsets.all(5),
                                    // margin: const EdgeInsets.only(bottom: 5),
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    child: ListView.builder(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: widget.ahasUtamaViewModel
                                                    .dataAHSUtama !=
                                                null
                                            ? widget.ahasUtamaViewModel
                                                .dataAHSUtama![0].length
                                            : 0,
                                        itemBuilder: (context, indexA) =>
                                            Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 3),
                                              padding: const EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: neutral200,
                                                      width: 1),
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(10))),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      flex: 2,
                                                      child: Text(
                                                        widget
                                                            .ahasUtamaViewModel
                                                            .dataAHSUtama![0]
                                                                [indexA]
                                                            .namaKategori,
                                                        style: text4(neutral500,
                                                            regular),
                                                      )),
                                                  Expanded(
                                                    child: Text(
                                                        widget
                                                            .ahasUtamaViewModel
                                                            .dataAHSUtama![0]
                                                                [indexA]
                                                            .koefisien
                                                            .toString(),
                                                        style: text4(neutral500,
                                                            regular)),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                        widget
                                                            .ahasUtamaViewModel
                                                            .dataAHSUtama![0]
                                                                [indexA]
                                                            .satuanKategori,
                                                        style: text4(neutral500,
                                                            regular)),
                                                  ),
                                                  Flexible(
                                                      child: GestureDetector(
                                                    onTap: () {
                                                      showDialog(
                                                          context: context,
                                                          builder:
                                                              (context) =>
                                                                  AlertDialog(
                                                                    content:
                                                                        Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        Text(
                                                                          "Detail",
                                                                          style: text3(
                                                                              neutral500,
                                                                              semibold),
                                                                        ),
                                                                        const Divider(
                                                                          thickness:
                                                                              2,
                                                                        ),
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text(
                                                                              "Nama",
                                                                              style: text4(neutral500, regular),
                                                                            ),
                                                                            Text(
                                                                              widget.ahasUtamaViewModel.dataAHSUtama![0][indexA].namaKategori,
                                                                              style: text4(neutral500, semibold),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        const SizedBox(
                                                                          height:
                                                                              5,
                                                                        ),
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text(
                                                                              "Koefisien",
                                                                              style: text4(neutral500, regular),
                                                                            ),
                                                                            Text(
                                                                              widget.ahasUtamaViewModel.dataAHSUtama![0][indexA].koefisien.toString(),
                                                                              style: text4(neutral500, semibold),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        const SizedBox(
                                                                          height:
                                                                              5,
                                                                        ),
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text(
                                                                              "Satuan",
                                                                              style: text4(neutral500, regular),
                                                                            ),
                                                                            Text(
                                                                              widget.ahasUtamaViewModel.dataAHSUtama![0][indexA].satuanKategori,
                                                                              style: text4(neutral500, semibold),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        const SizedBox(
                                                                          height:
                                                                              5,
                                                                        ),
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text(
                                                                              "Merk",
                                                                              style: text4(neutral500, regular),
                                                                            ),
                                                                            Text(
                                                                              widget.ahasUtamaViewModel.dataAHSUtama![0][indexA].merk,
                                                                              style: text4(neutral500, semibold),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        const SizedBox(
                                                                          height:
                                                                              5,
                                                                        ),
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text(
                                                                              "Spesifikasi",
                                                                              style: text4(neutral500, regular),
                                                                            ),
                                                                            Text(
                                                                              widget.ahasUtamaViewModel.dataAHSUtama![0][indexA].spesifikasi,
                                                                              style: text4(neutral500, semibold),
                                                                            )
                                                                          ],
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ));
                                                    },
                                                    child: Container(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5),
                                                      decoration: const BoxDecoration(
                                                          color: primary,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          5))),
                                                      child: Text(
                                                        "Detail",
                                                        style: text4(
                                                            neutral100, bold),
                                                      ),
                                                    ),
                                                  ))
                                                ],
                                              ),
                                            )),
                                  ),
                                ] else if (indexExpanded == 1) ...[
                                  Text(
                                    "B. UPAH",
                                    style: text3(neutral500, bold),
                                  ),
                                  Container(
                                    width: widget.size.width,
                                    padding: const EdgeInsets.all(5),
                                    margin: const EdgeInsets.only(bottom: 5),
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    child: ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: widget.ahasUtamaViewModel
                                                    .dataAHSUtama !=
                                                null
                                            ? widget.ahasUtamaViewModel
                                                .dataAHSUtama![1].length
                                            : 0,
                                        itemBuilder: (context, indexA) =>
                                            Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 3),
                                              padding: const EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: neutral200,
                                                      width: 1),
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(10))),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      flex: 2,
                                                      child: Text(
                                                        widget
                                                            .ahasUtamaViewModel
                                                            .dataAHSUtama![1]
                                                                [indexA]
                                                            .namaKategori,
                                                        style: text4(neutral500,
                                                            regular),
                                                      )),
                                                  Expanded(
                                                    child: Text(
                                                        widget
                                                            .ahasUtamaViewModel
                                                            .dataAHSUtama![1]
                                                                [indexA]
                                                            .koefisien
                                                            .toString(),
                                                        style: text4(neutral500,
                                                            regular)),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                        widget
                                                            .ahasUtamaViewModel
                                                            .dataAHSUtama![1]
                                                                [indexA]
                                                            .satuanKategori,
                                                        style: text4(neutral500,
                                                            regular)),
                                                  ),
                                                  Flexible(
                                                      child: GestureDetector(
                                                    onTap: () {
                                                      showDialog(
                                                          context: context,
                                                          builder:
                                                              (context) =>
                                                                  AlertDialog(
                                                                    content:
                                                                        Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        Text(
                                                                          "Detail",
                                                                          style: text3(
                                                                              neutral500,
                                                                              semibold),
                                                                        ),
                                                                        const Divider(
                                                                          thickness:
                                                                              2,
                                                                        ),
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text(
                                                                              "Nama",
                                                                              style: text4(neutral500, regular),
                                                                            ),
                                                                            Text(
                                                                              widget.ahasUtamaViewModel.dataAHSUtama![1][indexA].namaKategori,
                                                                              style: text4(neutral500, semibold),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        const SizedBox(
                                                                          height:
                                                                              5,
                                                                        ),
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text(
                                                                              "Koefisien",
                                                                              style: text4(neutral500, regular),
                                                                            ),
                                                                            Text(
                                                                              widget.ahasUtamaViewModel.dataAHSUtama![1][indexA].koefisien.toString(),
                                                                              style: text4(neutral500, semibold),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        const SizedBox(
                                                                          height:
                                                                              5,
                                                                        ),
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text(
                                                                              "Satuan",
                                                                              style: text4(neutral500, regular),
                                                                            ),
                                                                            Text(
                                                                              widget.ahasUtamaViewModel.dataAHSUtama![1][indexA].satuanKategori,
                                                                              style: text4(neutral500, semibold),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        const SizedBox(
                                                                          height:
                                                                              5,
                                                                        ),
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text(
                                                                              "Merk",
                                                                              style: text4(neutral500, regular),
                                                                            ),
                                                                            Text(
                                                                              widget.ahasUtamaViewModel.dataAHSUtama![1][indexA].merk,
                                                                              style: text4(neutral500, semibold),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        const SizedBox(
                                                                          height:
                                                                              5,
                                                                        ),
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text(
                                                                              "Spesifikasi",
                                                                              style: text4(neutral500, regular),
                                                                            ),
                                                                            Text(
                                                                              widget.ahasUtamaViewModel.dataAHSUtama![1][indexA].spesifikasi,
                                                                              style: text4(neutral500, semibold),
                                                                            )
                                                                          ],
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ));
                                                    },
                                                    child: Container(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5),
                                                      decoration: const BoxDecoration(
                                                          color: primary,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          5))),
                                                      child: Text(
                                                        "Detail",
                                                        style: text4(
                                                            neutral100, bold),
                                                      ),
                                                    ),
                                                  ))
                                                ],
                                              ),
                                            )),
                                  ),
                                ] else ...[
                                  Text(
                                    "C. ALAT",
                                    style: text3(neutral500, bold),
                                  ),
                                  Container(
                                    width: widget.size.width,
                                    padding: const EdgeInsets.all(5),
                                    margin: const EdgeInsets.only(bottom: 5),
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    child: ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: widget.ahasUtamaViewModel
                                                    .dataAHSUtama !=
                                                null
                                            ? widget.ahasUtamaViewModel
                                                .dataAHSUtama![2].length
                                            : 0,
                                        itemBuilder: (context, indexA) =>
                                            Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 3),
                                              padding: const EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: neutral200,
                                                      width: 1),
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(10))),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      flex: 2,
                                                      child: Text(
                                                        widget
                                                            .ahasUtamaViewModel
                                                            .dataAHSUtama![2]
                                                                [indexA]
                                                            .namaKategori,
                                                        style: text4(neutral500,
                                                            regular),
                                                      )),
                                                  Expanded(
                                                    child: Text(
                                                        widget
                                                            .ahasUtamaViewModel
                                                            .dataAHSUtama![2]
                                                                [indexA]
                                                            .koefisien
                                                            .toString(),
                                                        style: text4(neutral500,
                                                            regular)),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                        widget
                                                            .ahasUtamaViewModel
                                                            .dataAHSUtama![2]
                                                                [indexA]
                                                            .satuanKategori,
                                                        style: text4(neutral500,
                                                            regular)),
                                                  ),
                                                  Flexible(
                                                      child: GestureDetector(
                                                    onTap: () {
                                                      showDialog(
                                                          context: context,
                                                          builder:
                                                              (context) =>
                                                                  AlertDialog(
                                                                    content:
                                                                        Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        Text(
                                                                          "Detail",
                                                                          style: text3(
                                                                              neutral500,
                                                                              semibold),
                                                                        ),
                                                                        const Divider(
                                                                          thickness:
                                                                              2,
                                                                        ),
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text(
                                                                              "Nama",
                                                                              style: text4(neutral500, regular),
                                                                            ),
                                                                            Text(
                                                                              widget.ahasUtamaViewModel.dataAHSUtama![2][indexA].namaKategori,
                                                                              style: text4(neutral500, semibold),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        const SizedBox(
                                                                          height:
                                                                              5,
                                                                        ),
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text(
                                                                              "Koefisien",
                                                                              style: text4(neutral500, regular),
                                                                            ),
                                                                            Text(
                                                                              widget.ahasUtamaViewModel.dataAHSUtama![2][indexA].koefisien.toString(),
                                                                              style: text4(neutral500, semibold),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        const SizedBox(
                                                                          height:
                                                                              5,
                                                                        ),
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text(
                                                                              "Satuan",
                                                                              style: text4(neutral500, regular),
                                                                            ),
                                                                            Text(
                                                                              widget.ahasUtamaViewModel.dataAHSUtama![2][indexA].satuanKategori,
                                                                              style: text4(neutral500, semibold),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        const SizedBox(
                                                                          height:
                                                                              5,
                                                                        ),
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text(
                                                                              "Merk",
                                                                              style: text4(neutral500, regular),
                                                                            ),
                                                                            Text(
                                                                              widget.ahasUtamaViewModel.dataAHSUtama![2][indexA].merk,
                                                                              style: text4(neutral500, semibold),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        const SizedBox(
                                                                          height:
                                                                              5,
                                                                        ),
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text(
                                                                              "Spesifikasi",
                                                                              style: text4(neutral500, regular),
                                                                            ),
                                                                            Text(
                                                                              widget.ahasUtamaViewModel.dataAHSUtama![2][indexA].spesifikasi,
                                                                              style: text4(neutral500, semibold),
                                                                            )
                                                                          ],
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ));
                                                    },
                                                    child: Container(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5),
                                                      decoration: const BoxDecoration(
                                                          color: primary,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          5))),
                                                      child: Text(
                                                        "Detail",
                                                        style: text4(
                                                            neutral100, bold),
                                                      ),
                                                    ),
                                                  ))
                                                ],
                                              ),
                                            )),
                                  ),
                                ],
                              ],
                            ),
                          ))
                ],
              ],
            );
          } else if (widget.ahasUtamaViewModel.isSearching == false) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Center(
                child: hasMore
                    ? const CircularProgressIndicator(
                        color: primary,
                      )
                    : const Text("Data sudah ditampilkan maksimal"),
              ),
            );
          }
          return null;
        });
  }
}
