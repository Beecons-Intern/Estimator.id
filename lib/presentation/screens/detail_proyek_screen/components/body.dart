import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../route/route_name.dart';
import '../../../view_model/detail_proyek_view_model.dart';
import '../../../widgets/widgets.dart';
import '../../../../utilities/utilities.dart';
import 'detail_item.dart';
import 'hapus_item.dart';
import 'hapus_kategori.dart';

class Body extends StatefulWidget {
  const Body({Key? key, required this.detailProyekViewModel}) : super(key: key);
  final DetailProyekViewModel detailProyekViewModel;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final items = ["Edit AHS", "Edit Volume", "Copy", "Duplikat", "Hapus"];
  final itemsKategori = ["Tambah Pekerjaan", "Hapus Semua Pekerjaan"];
  int? analisa;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(
        children: [
          // const SizedBox(
          //   height: 16,
          // ),
          // Row(
          //   children: [
          //     Expanded(
          //       child: GestureDetector(
          //         onTap: () {
          //           Navigator.pushNamed(context, RouteName.buatKategori);
          //         },
          //         child: Container(
          //           margin: const EdgeInsets.symmetric(horizontal: 8),
          //           padding:
          //               const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
          //           decoration: BoxDecoration(
          //               color: primary,
          //               borderRadius: BorderRadius.circular(10)),
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //               const Icon(
          //                 Icons.edit,
          //                 color: neutral100,
          //                 size: 16,
          //               ),
          //               const SizedBox(
          //                 width: 5,
          //               ),
          //               Text(
          //                 "Ubah Kategori",
          //                 style: text3(neutral100, regular),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //     ),
          //     Expanded(
          //       child: GestureDetector(
          //         onTap: () {
          //           showDialog(
          //               context: context,
          //               builder: (context) => const BuildModalUpgradeAccount());
          //           /* showDialog(
          //             context: context,
          //             builder: (BuildContext context) =>
          //                 ImporVolume(size: size),
          //           ); */
          //         },
          //         child: Container(
          //           margin: const EdgeInsets.symmetric(horizontal: 8),
          //           padding:
          //               const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
          //           decoration: BoxDecoration(
          //               color: primary,
          //               borderRadius: BorderRadius.circular(10)),
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //               const Icon(
          //                 Icons.upload,
          //                 color: neutral100,
          //                 size: 16,
          //               ),
          //               const SizedBox(
          //                 width: 5,
          //               ),
          //               Text(
          //                 "Impor Volume",
          //                 style: text3(neutral100, regular),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          const SizedBox(
            height: 16,
          ),
          ListView.separated(
            itemCount: widget.detailProyekViewModel.datasKategoriPekerjaan !=
                        null &&
                    widget.detailProyekViewModel.datasKategoriPekerjaan!
                        .isNotEmpty
                ? widget.detailProyekViewModel.datasKategoriPekerjaan!.length
                : 0,
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
                          widget.detailProyekViewModel.datasKategoriPekerjaan !=
                                      null &&
                                  widget.detailProyekViewModel
                                      .datasKategoriPekerjaan!.isNotEmpty
                              ? widget.detailProyekViewModel
                                  .datasKategoriPekerjaan![index].kategori
                              : "",
                          style: text3(neutral500, regular),
                        ),
                      ),
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // GestureDetector(
                            //   onTap: () {
                            //     showModalBottomSheet(
                            //         shape: const RoundedRectangleBorder(
                            //             borderRadius: BorderRadius.only(
                            //                 topLeft: Radius.circular(10),
                            //                 topRight: Radius.circular(10))),
                            //         context: context,
                            //         builder: (context) => Container(
                            //             margin: const EdgeInsets.symmetric(
                            //                 vertical: 20),
                            //             padding: EdgeInsets.symmetric(
                            //                 horizontal: size.width * 0.05),
                            //             child: ListView.separated(
                            //                 shrinkWrap: true,
                            //                 itemBuilder: (context, index) {
                            //                   return GestureDetector(
                            //                     onTap: () {
                            //                       Navigator.pop(context);
                            //                       switch (index) {
                            //                         case 0:
                            //                           Navigator.pushNamed(
                            //                               context,
                            //                               RouteName
                            //                                   .tambahPekerjaan);
                            //                           break;
                            //                         case 1:
                            //                           showDialog(
                            //                               context: context,
                            //                               builder: (context) =>
                            //                                   const HapusKategori());
                            //                           break;
                            //                         default:
                            //                       }
                            //                     },
                            //                     child: Text(
                            //                       itemsKategori[index],
                            //                       style: text2(
                            //                           neutral500, regular),
                            //                     ),
                            //                   );
                            //                 },
                            //                 separatorBuilder:
                            //                     (context, index) =>
                            //                         const Divider(
                            //                           thickness: 1,
                            //                         ),
                            //                 itemCount: itemsKategori.length)));
                            //   },
                            //   child: const Icon(
                            //     Icons.settings,
                            //     size: 16,
                            //   ),
                            // ),
                            // const SizedBox(
                            //   width: 10,
                            // ),
                            GestureDetector(
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
                      itemCount:
                          widget.detailProyekViewModel.datasHargaSatuan !=
                                      null &&
                                  widget.detailProyekViewModel.datasHargaSatuan!
                                      .isNotEmpty
                              ? widget.detailProyekViewModel
                                  .datasHargaSatuan![index].length
                              : 0,
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
                                  widget
                                      .detailProyekViewModel
                                      .datasHargaSatuan![index][indexExpanded]
                                      .namaPekerjaan,
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
                                        builder: (context) => DetailItem(
                                              hargaSatuan: widget
                                                      .detailProyekViewModel
                                                      .datasHargaSatuan![index]
                                                  [indexExpanded],
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
                                                      switch (index) {
                                                        case 0:
                                                          Navigator.pushNamed(
                                                              context,
                                                              RouteName
                                                                  .editAHS);
                                                          break;
                                                        case 1:
                                                          Navigator.pushNamed(
                                                              context,
                                                              RouteName
                                                                  .editVolume);
                                                          break;
                                                        case 2:
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                                  snackbarCopyDuplikat(
                                                                      size,
                                                                      "dicopy"));
                                                          break;
                                                        case 3:
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                                  snackbarCopyDuplikat(
                                                                      size,
                                                                      "diduplikat"));
                                                          break;
                                                        case 4:
                                                          showDialog(
                                                              context: context,
                                                              builder: (context) =>
                                                                  const HapusItem());
                                                          break;
                                                        default:
                                                      }
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
                                ),
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
          TotalAnggaranBelanja(
            totalName: "Jumlah Harga",
            harga: "Rp. ${widget.detailProyekViewModel.jumlahHarga.toString()}",
          ),
          const SizedBox(
            height: 10,
          ),
          TotalAnggaranBelanja(
              totalName:
                  "PPN ${widget.detailProyekViewModel.dataProyek!.pajak}",
              harga:
                  "Rp. ${widget.detailProyekViewModel.jumlahPajak.toString()}"),
          const SizedBox(
            height: 10,
          ),
          TotalAnggaranBelanja(
              totalName: "Total Harga",
              harga:
                  "Rp. ${(widget.detailProyekViewModel.jumlahHarga + widget.detailProyekViewModel.jumlahPajak).toString()}"),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  SnackBar snackbarCopyDuplikat(Size size, String jenis) {
    return SnackBar(
        duration: const Duration(seconds: 2),
        margin: EdgeInsets.only(
            bottom: size.height * 0.5,
            left: size.width * 0.2,
            right: size.width * 0.2),
        backgroundColor: neutral100,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        behavior: SnackBarBehavior.floating,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            LottieBuilder.asset("assets/lotie/success_primary.json",
                width: 80, height: 80),
            Text("Data item pekerjaan berhasil $jenis",
                style: text3(neutral500, regular), textAlign: TextAlign.center),
          ],
        ));
  }
}
