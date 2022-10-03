import 'package:flutter/material.dart';

import '../../../route/route_name.dart';
import '../../../../utilities/utilities.dart';
import 'detail_item.dart';
import 'ubah_rincian_dialog.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<String> data = ["A. Bahan", "B. Upah", "C. Alat"];
  final items = ["Ubah Rincian", "Ubah Spesifikasi", "Hapus"];
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
          Text(
            "Harga Satuan",
            style: text3(neutral500, regular),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            width: size.width,
            decoration: BoxDecoration(
                color: accentGreen100,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: primary, width: 2)),
            child: Text(
              'Rp 124.983,57',
              style: text2(neutral500, bold),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ListView.separated(
            itemCount: data.length,
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
                          data[index],
                          style: body(neutral500, regular),
                        ),
                      ),
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              onTap: () {
                                switch (index) {
                                  case 0:
                                    Navigator.pushNamed(
                                        context, RouteName.tambahBahan);
                                    break;
                                  case 1:
                                    Navigator.pushNamed(
                                        context, RouteName.tambahUpah);
                                    break;
                                  case 2:
                                    Navigator.pushNamed(
                                        context, RouteName.tambahAlat);
                                    break;
                                  default:
                                }
                              },
                              child: const Icon(
                                Icons.add,
                                size: 16,
                              ),
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
                    child: Column(
                      children: [
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, indexExpanded) => Container(
                            margin: const EdgeInsets.symmetric(vertical: 6),
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                                border: Border.all(color: neutral200, width: 1),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: Text(
                                      "Kayu balok 5/7 kelas II",
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
                                            builder: (context) =>
                                                const DetailItem());
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            border: Border.all(color: primary),
                                            borderRadius:
                                                const BorderRadius.all(
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
                                                    topLeft:
                                                        Radius.circular(10),
                                                    topRight:
                                                        Radius.circular(10))),
                                            context: context,
                                            builder: (context) => Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 20),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        size.width * 0.05),
                                                child: ListView.separated(
                                                    shrinkWrap: true,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return GestureDetector(
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                          switch (index) {
                                                            case 0:
                                                              showDialog(
                                                                  context:
                                                                      context,
                                                                  builder: (context) =>
                                                                      UbahRincianDialog(
                                                                          size:
                                                                              size));
                                                              break;
                                                            case 1:
                                                              Navigator.pushNamed(
                                                                  context,
                                                                  RouteName
                                                                      .ubahSpesifikasi);
                                                              break;
                                                            default:
                                                          }
                                                        },
                                                        child: Text(
                                                          items[index],
                                                          style: text2(
                                                              neutral500,
                                                              regular),
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
                                            borderRadius:
                                                const BorderRadius.all(
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
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Text("Jumlah Harga",
                                    style: text3(neutral500, semibold))),
                            Expanded(
                                child: Text("Rp 90.171,43",
                                    style: text3(neutral500, semibold),
                                    textAlign: TextAlign.right))
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Expanded(
                                child: Text("Jasa 10.00 %	",
                                    style: text3(neutral500, semibold))),
                            Expanded(
                                child: Text("Rp 9.017,14",
                                    style: text3(neutral500, semibold),
                                    textAlign: TextAlign.right))
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Expanded(
                                child: Text("Total Harga",
                                    style: text3(neutral500, semibold))),
                            Expanded(
                                child: Text("Rp 99.188,57",
                                    style: text3(neutral500, semibold),
                                    textAlign: TextAlign.right))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
