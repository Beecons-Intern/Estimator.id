import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../utilities/utilities.dart';
import '../../../../view_model/bahan_utama_view_model.dart';

class BuildListViewSupplier extends StatefulWidget {
  const BuildListViewSupplier(
      {super.key, required this.size, required this.bahanUtamaViewModel});
  final Size size;
  final BahanUtamaViewModel bahanUtamaViewModel;

  @override
  State<BuildListViewSupplier> createState() => _BuildListViewSupplierState();
}

class _BuildListViewSupplierState extends State<BuildListViewSupplier> {
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
        Provider.of<BahanUtamaViewModel>(context, listen: false)
            .updateDataProduk(start, lenght)
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
    return GridView.builder(
        controller: controller,
        padding: EdgeInsets.only(
            top: 10,
            left: widget.size.width * 0.05,
            right: widget.size.width * 0.05,
            bottom: 80),
        itemCount: widget.bahanUtamaViewModel.dataProdukTemp != null
            ? widget.bahanUtamaViewModel.dataProdukTemp!.length + 2
            : 0,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.52,
            crossAxisSpacing: 10,
            mainAxisSpacing: 16,
            crossAxisCount: 2),
        itemBuilder: (context, index) {
          if (index < widget.bahanUtamaViewModel.dataProdukTemp!.length) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                color: neutral100,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 2,
                      blurRadius: 2,
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(0, 1)),
                ],
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/img/led.jpg",
                        width: widget.size.width,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        widget.bahanUtamaViewModel.dataProdukTemp![index].namaProduk,
                        style: text3(neutral500, regular),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "PT ${widget.bahanUtamaViewModel.dataProdukTemp![index].merk}",
                        style: text4(primary, regular),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const DottedLine(
                        dashColor: neutral200,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            color: primary800,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        child: Text(
                          widget.bahanUtamaViewModel.dataProdukTemp![index].merk,
                          style: text4(neutral100, regular),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RichText(
                          text: TextSpan(
                              text: "Rp ${widget.bahanUtamaViewModel.dataProdukTemp![index].hargaDasar}",
                              style: text3(accentOrange500, medium),
                              children: [
                            TextSpan(
                                text: " / ${widget.bahanUtamaViewModel.dataProdukTemp![index].satuan}",
                                style: text4(neutral500, light))
                          ])),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            color: primary,
                            size: 14,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "DI Yogyakarta",
                            style: text4(primary, regular),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            );
          } else {
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
