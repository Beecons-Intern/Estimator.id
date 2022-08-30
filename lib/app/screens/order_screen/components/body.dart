import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import 'build_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.only(
          left: size.width * 0.05, right: size.width * 0.05, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Tinggal selangkah lagi, segera selesaikan pembayaran Anda!",
              style: text4(neutral500, regular),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Image.asset("assets/icon/server_multiple.png"),
              const SizedBox(
                width: 10,
              ),
              Text(
                "PROFESIONAL",
                style: text1(primary, medium),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            decoration: BoxDecoration(
              color: const Color(0xFFFAFAFA),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: const Color(0xFFE6E6E6)),
              boxShadow: [
                BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 2,
                    color: const Color(0xFFE6E6E6).withOpacity(0.8),
                    offset: const Offset(0, 1)),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1 Bulan",
                  style: text2(primary, medium),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Rp 399.00", style: text2(primary, medium)),
                    Text("/bulan", style: text4(primary, regular))
                  ],
                )
              ],
            ),
          ),
          BuildCard(size: size),
          BuildCard(size: size),
          BuildCard(size: size),
          BuildCard(size: size),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Sub Total (Hemat 63%)",
                style: text3(neutral500, regular),
              ),
              Text(
                "Rp 3.576.000",
                style: text3(neutral500, regular),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "PPN 11%",
                style: text3(neutral500, regular),
              ),
              Text(
                "Rp 393.360",
                style: text3(neutral500, regular),
              )
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: const BoxDecoration(color: Color(0xFFFFE002)),
              child: const Text("Bonus: Jasa Konsultasi RAB (Disc. 25%)"),
            ),
          ),
        ],
      ),
    );
  }
}
