import 'package:estimator_id/app/utilities/colors.dart';
import 'package:flutter/material.dart';

import 'alert_ambil_volume.dart';

class CardBahan extends StatelessWidget {
  const CardBahan({
    Key? key,
    required this.size,
    required this.icon,
    required this.titleButton,
    required this.onTap,
  }) : super(key: key);

  final Size size;
  final IconData icon;
  final String titleButton;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      padding: const EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.01),
      decoration: BoxDecoration(
          color: primary100, borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///button ambil volume

          GestureDetector(
            onTap: onTap,
            child: Container(
              width: size.width * 0.32,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: primary800, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  ///icon button
                  Icon(
                    icon,
                    color: neutral100,
                  ),
                  const SizedBox(width: 5),

                  ///title button
                  Text(
                    titleButton,
                    style: const TextStyle(color: neutral100, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),

          ///input keterangan
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///name field
                const Text(
                  "Keterangan",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),

                ///input field
                Container(
                  color: neutral100,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: size.width * 0.5,
                  height: size.height * 0.04,
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                )
              ],
            ),
          ),

          /// input jumlah
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///name field
                const Text(
                  "jumlah",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),

                ///input field
                Container(
                  color: neutral100,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: size.width * 0.5,
                  height: size.height * 0.04,
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                )
              ],
            ),
          ),

          /// input panjang
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///name field
                const Text(
                  "Panjang",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),

                ///input field
                Container(
                  color: neutral100,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: size.width * 0.5,
                  height: size.height * 0.04,
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                )
              ],
            ),
          ),

          /// input lebar
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///name field
                const Text(
                  "Lebar",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),

                ///input field
                Container(
                  color: neutral100,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: size.width * 0.5,
                  height: size.height * 0.04,
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                )
              ],
            ),
          ),

          /// input tinggi
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///name field
                const Text(
                  "Tinggi",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),

                ///input field
                Container(
                  color: neutral100,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: size.width * 0.5,
                  height: size.height * 0.04,
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                )
              ],
            ),
          ),

          /// input volume
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///name field
                const Text(
                  "Volume",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),

                ///input field
                Container(
                  color: neutral100,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: size.width * 0.5,
                  height: size.height * 0.04,
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                )
              ],
            ),
          ),

          ///jumlah volume
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///name field
                const Text(
                  "Jumlah Volume",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),

                ///input field
                Row(
                  children: const [
                    Text(
                      '0.0',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.delete,
                      size: 20,
                    ),
                  ],
                )
              ],
            ),
          ),

          /// button simpan dan batal
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///button simpan
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: primary800,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Text(
                      "Simpan",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: neutral100),
                    ),
                  ),
                ),

                ///spasi
                const SizedBox(width: 10),

                ///button batal
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: accentYellow500,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Text(
                      "Batal",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: neutral100),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
