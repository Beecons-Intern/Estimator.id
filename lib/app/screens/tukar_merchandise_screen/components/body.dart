import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../../widgets/build_input_textfield_poin.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map> icons = [
    {"assets": "assets/icon/baju.png", "name": "Tshirt"},
    {"assets": "assets/icon/topi.png", "name": "Topi"},
    {"assets": "assets/icon/tas.png", "name": "Totebag"},
  ];

  int? indexSelected;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Row(
              children: [
                ...icons
                    .map((item) => Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                indexSelected = icons.indexOf(item);
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      indexSelected == icons.indexOf(item)
                                          ? const BorderRadius.all(
                                              Radius.circular(10))
                                          : null,
                                  border: indexSelected == icons.indexOf(item)
                                      ? Border.all(color: primary, width: 2)
                                      : null),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      color: primary,
                                      border: indexSelected != null &&
                                              indexSelected ==
                                                  icons.indexOf(item)
                                          ? Border.all(color: primary, width: 2)
                                          : null,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5)),
                                      boxShadow: [
                                        BoxShadow(
                                            spreadRadius: 2,
                                            blurRadius: 2,
                                            color:
                                                Colors.black.withOpacity(0.1),
                                            offset: const Offset(0, 1)),
                                      ],
                                    ),
                                    child: Image.asset(item["assets"]),
                                  ),
                                  Text(
                                    item["name"],
                                    style: text4(neutral500, regular),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/icon/koin.png",
                                        width: 14,
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "200 Poin",
                                        style: text4(neutral500, regular),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ))
                    .toList()
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Column(
              children: const [
                BuildInputFieldPoin(title: "Nama Penerima"),
                BuildInputFieldPoin(title: "Nomor Telepon"),
                BuildInputFieldPoin(
                  title: "Alamat Penerima",
                  isAddress: true,
                ),
                BuildInputFieldPoin(title: "Kode Pos"),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
