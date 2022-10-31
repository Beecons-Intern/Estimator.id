import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../utilities/utilities.dart';
import '../../../../view_model/alat_utama_view_model.dart';

class BuildListViewAlat extends StatefulWidget {
  const BuildListViewAlat(
      {Key? key, required this.size, required this.alatUtamaViewModel})
      : super(key: key);

  final Size size;
  final AlatUtamaViewModel alatUtamaViewModel;

  @override
  State<BuildListViewAlat> createState() => _BuildListViewAlatState();
}

class _BuildListViewAlatState extends State<BuildListViewAlat> {
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
        Provider.of<AlatUtamaViewModel>(context, listen: false)
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
        itemCount: widget.alatUtamaViewModel.dataAlatUtamaTemp != null
            ? widget.alatUtamaViewModel.dataAlatUtamaTemp!.length + (widget.alatUtamaViewModel.isSearching == false ? 0 : 1)
            : 0,
        shrinkWrap: true,
        separatorBuilder: (context, index) => const Divider(thickness: 1),
        itemBuilder: (context, index) {
          if (index < widget.alatUtamaViewModel.dataAlatUtamaTemp!.length) {
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
                              widget.alatUtamaViewModel
                                  .dataAlatUtamaTemp![index].namaAlat,
                              style: text3(neutral500, regular),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              widget.alatUtamaViewModel
                                  .dataAlatUtamaTemp![index].satuan,
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
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
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
                                      widget.alatUtamaViewModel
                                          .dataAlatUtamaTemp![index].namaAlat,
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
                                      widget.alatUtamaViewModel
                                          .dataAlatUtamaTemp![index].satuan,
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
                                      "Harga Dasar",
                                      style: text4(neutral500, semibold),
                                    ),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Expanded(
                                        child: Text(
                                      widget.alatUtamaViewModel
                                          .dataAlatUtamaTemp![index].hargaDasar
                                          .toString(),
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
                                      widget.alatUtamaViewModel
                                          .dataAlatUtamaTemp![index].merk,
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
                                      widget
                                          .alatUtamaViewModel
                                          .dataAlatUtamaTemp![index]
                                          .spesifikasi,
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
                                      widget.alatUtamaViewModel
                                          .dataAlatUtamaTemp![index].keterangan,
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
                ],
              ],
            );
          } else if (widget.alatUtamaViewModel.isSearching == false){
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
        });
  }
}
