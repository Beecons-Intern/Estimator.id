import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../view_model/template_proyek_view_model.dart';
import '../../../../utilities/utilities.dart';
import 'detail_item.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
    required this.templateProyekViewModel,
  }) : super(key: key);
  final TemplateProyekViewModel templateProyekViewModel;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
          ListView.separated(
            itemCount:
                widget.templateProyekViewModel.datasTemplateKategoriPekerjaan !=
                            null &&
                        widget.templateProyekViewModel
                            .datasTemplateKategoriPekerjaan!.isNotEmpty
                    ? widget.templateProyekViewModel
                        .datasTemplateKategoriPekerjaan!.length
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
                          widget.templateProyekViewModel
                                          .datasTemplateKategoriPekerjaan !=
                                      null &&
                                  widget
                                      .templateProyekViewModel
                                      .datasTemplateKategoriPekerjaan!
                                      .isNotEmpty
                              ? widget
                                  .templateProyekViewModel
                                  .datasTemplateKategoriPekerjaan![index]
                                  .kategori
                              : "",
                          style: text3(neutral500, regular),
                        ),
                      ),
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
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
                      itemCount: widget.templateProyekViewModel
                                      .datasTemplateHargaSatuan !=
                                  null &&
                              widget.templateProyekViewModel
                                  .datasTemplateHargaSatuan!.isNotEmpty
                          ? widget.templateProyekViewModel
                              .datasTemplateHargaSatuan![index].length
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
                                      .templateProyekViewModel
                                      .datasTemplateHargaSatuan![index]
                                          [indexExpanded]
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
                                              templateHargaSatuan: widget
                                                      .templateProyekViewModel
                                                      .datasTemplateHargaSatuan![
                                                  index][indexExpanded],
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
            height: 80,
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
