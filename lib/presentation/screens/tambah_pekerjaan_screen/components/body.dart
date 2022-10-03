import 'package:flutter/material.dart';
import '../../../../utilities/utilities.dart';
import 'build_textfield.dart';
import 'item_sumber.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<String> sumber = [
    "Proyek Terkini",
    "PUPR",
    "SNI",
    "Estimator.id",
    "Empiris"
  ];

  List<String> sumberActive = [];
  List<int> indexActive = [];
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
          const BuildTextField(
            name: "search",
            title: "Nama pekerjaan",
            hint: "cari pekerjaan disini",
          ),
          const SizedBox(
            height: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sumber",
                style: text3(neutral500, regular),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                width: size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: neutral200, width: 2)),
                child: Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children: sumber
                      .map((item) => ItemSumber(
                            title: item,
                            onTap: () {
                              if (sumberActive.contains(item)) {
                                setState(() {
                                  sumberActive.remove(item);
                                });
                              } else {
                                setState(() {
                                  sumberActive.add(item);
                                });
                              }
                            },
                            isActive: sumberActive.contains(item),
                          ))
                      .toList(),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            "Menampilkan 2,094 data",
            style: text3(neutral500, regular),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.separated(
            itemCount: 100,
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
                              "Ahli K3 konstruksi madya selaku pimpinan UKK (personil manajerial) - K3 Gedung",
                              style: body(neutral500, regular),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              "m2",
                              style: body(neutral500, regular),
                            ),
                          ),
                          Flexible(
                            child: GestureDetector(
                                onTap: () {
                                  if (indexActive.contains(index)) {
                                    setState(() {
                                      indexActive.remove(index);
                                    });
                                  } else {
                                    setState(() {
                                      indexActive.add(index);
                                    });
                                  }
                                },
                                child: Icon(
                                  indexActive.contains(index) == true
                                      ? Icons.bookmark
                                      : Icons.bookmark_border_rounded,
                                  color: primary,
                                )),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
