import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../../widgets/build_modal_sheet_confirmation.dart';
import '../../../widgets/build_price_poin_grid.dart';

class BuildChoosePrice extends StatelessWidget {
  const BuildChoosePrice({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: size.width,
            decoration: const BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nama Pelanggan",
                      style: text4(neutral100, regular),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Anton Sanjaya",
                      style: text2(neutral100, bold),
                    ),
                    Text(
                      "0987 0875 09871",
                      style: text4(neutral100, regular),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tarif / Daya",
                      style: text4(neutral100, regular),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "R1 / 1400VA",
                      style: text2(neutral100, bold),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const BuildPricePoinGrid(),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: const BuildModalSheetConfirmation(
              namaPelanggan: "Anton Sanjaya",
              nomor: "873947509847",
              keteranganNomor: "Nomer Token",
              keteranganPembayaran: "Token Listrik PLN",
              pembayaran: "Rp 20.000",
              jumlahPoin: "800 Poin",
              textButton: "Tukar",
            ),
          )
        ],
      ),
    );
  }
}
