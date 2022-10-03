import 'package:flutter/material.dart';
import '../../../../utilities/utilities.dart';
import 'build_card.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double value = 3;
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
              textAlign: TextAlign.justify,
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
          Slider(
            inactiveColor: const Color(0xFFE2FEE4),
            activeColor: primary,
            value: value,
            onChanged: (value) {
              setState(() {
                this.value = value;
              });
            },
            min: 3,
            max: 10,
            label: value.round().toString(),
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
          const SizedBox(
            height: 5,
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
          const SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding:
                  const EdgeInsets.only(left: 2, right: 10, top: 2, bottom: 2),
              decoration: const BoxDecoration(
                  color: Color(0xFFFFE002),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: RichText(
                  text: TextSpan(
                      text: "Bonus:",
                      style: text4(neutral500, medium),
                      children: [
                    TextSpan(
                        text: " Jasa Konsultasi RAB ",
                        style: text4(neutral500, light)),
                    TextSpan(
                        text: "(Disc. 25%)",
                        style: text4(const Color(0xFFEA1823), light))
                  ])),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: size.width,
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE6E6E6)),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Memiliki kode promo?"),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: const BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.wallet_giftcard_rounded,
                        color: neutral100,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Gunakan",
                        style: text3(neutral100, regular),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 150,
          ),
        ],
      ),
    );
  }
}
