import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../../widgets/build_price_poin_radio.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    List<String> icons = [
      "assets/icon/ovo.png",
      "assets/icon/dana.png",
      "assets/icon/gopay.png",
      "assets/icon/shopee.png"
    ];

    int? indexSelected;
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
            child: Text(
              "Pilih E-Wallet",
              style: text3(neutral500, bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 100,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                ...icons
                    .map((item) => GestureDetector(
                          onTap: () {
                            setState(() {
                              indexSelected = icons.indexOf(item);
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            margin: EdgeInsets.only(
                                right: 10,
                                bottom: 5,
                                top: 5,
                                left: icons.indexOf(item) == 0
                                    ? size.width * 0.05
                                    : 0),
                            width: 86,
                            decoration: BoxDecoration(
                              color: neutral100,
                              border: indexSelected != null &&
                                      indexSelected == icons.indexOf(item)
                                  ? Border.all(color: primary, width: 2)
                                  : null,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    color: Colors.black.withOpacity(0.1),
                                    offset: const Offset(0, 1)),
                              ],
                            ),
                            child: Image.asset(item),
                          ),
                        ))
                    .toList()
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Input No",
                  style: text3(neutral500, bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  cursorColor: primary,
                  decoration: const InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.fromLTRB(16, 20, 20, 0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primary, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: neutral200),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: const BuildPricePoinRadio(),
          ),
          const SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}
