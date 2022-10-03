import 'package:flutter/material.dart';
import '../../../../utilities/utilities.dart';
import '../../../widgets/item_sumber.dart';
import '../../../widgets/rounded_button.dart';
import 'build_textfield.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List itemList = [
    "Proyek Terkini",
    "Suplier",
    "SHBJ",
    "IKK BPS",
    "Survei",
  ];

  int isSelected = 0;
  int? analisa;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildTextField(
                  size: size,
                  title: "Nama Barang",
                  initialValue: "Beton balok bordes 20/40",
                  name: "nama_barang"),
              const SizedBox(
                height: 10,
              ),
              BuildTextField(
                  size: size,
                  title: "Spesifikasi",
                  initialValue: "Standar",
                  name: "spesifikasi"),
              const SizedBox(
                height: 10,
              ),
              BuildTextField(
                  size: size,
                  title: "Merk",
                  initialValue: "Holcim",
                  name: "merk"),
              const SizedBox(
                height: 16,
              ),
              RoundedButton(
                ontap: () {},
                text: "Perbarui",
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 2,
          color: neutral200,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width,
                  height: 36,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: itemList
                        .map((item) => ItemSumber(
                              title: item,
                              size: size,
                              onTap: () {
                                setState(() {
                                  isSelected = itemList.indexOf(item);
                                });
                              },
                              isActive: isSelected,
                              index: itemList.indexOf(item),
                            ))
                        .toList(),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ListView.separated(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                  ),
                  itemCount: 100,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) =>
                      const Divider(thickness: 1),
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
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      "Kayu balok 5/7 kelas II",
                                      style: body(neutral500, regular),
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      "m3",
                                      style: body(neutral500, regular),
                                    ),
                                  ),
                                  Flexible(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        GestureDetector(
                                          child: Container(
                                            padding: const EdgeInsets.all(5),
                                            decoration: const BoxDecoration(
                                                color: primary,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5))),
                                            child: Text(
                                              "Pilih",
                                              style: text4(neutral100, medium),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Icon(
                                          analisa != null && analisa == index
                                              ? Icons.arrow_drop_up_rounded
                                              : Icons.arrow_drop_down_rounded,
                                          color: neutral500,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
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
                                      border: Border.all(
                                          color: neutral200, width: 1),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
