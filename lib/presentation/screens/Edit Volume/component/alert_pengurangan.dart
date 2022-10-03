import 'package:flutter/material.dart';
import '../../../../utilities/utilities.dart';

class AlertPenguranganBahan extends StatelessWidget {
  const AlertPenguranganBahan({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            /// title field keterangan pengurangan
            "Keterangan Pengurangan",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),

          ///input field keterangan pengurangan
          Container(
            width: size.width,
            height: 35,
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: accentGreen400,
              borderRadius: BorderRadius.circular(5),
            ),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),

          /// title field jumlah
          const Text(
            "Jumlah",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),

          ///input field jumlah
          Container(
            width: size.width,
            height: 35,
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: accentGreen100,
              borderRadius: BorderRadius.circular(5),
            ),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '0.00',
                hintStyle: TextStyle(fontSize: 14),
              ),
            ),
          ),

          /// title filed volume
          const Text(
            "Volume",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),

          ///value volume
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              "m3",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
          ),

          /// title field panjang
          const Text(
            "Panjang",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),

          ///input field panajng
          Container(
            width: size.width,
            height: 35,
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: accentGreen100,
              borderRadius: BorderRadius.circular(5),
            ),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '0.00',
                hintStyle: TextStyle(fontSize: 14),
              ),
            ),
          ),

          ///jumlah volume
          const Text(
            "Jumah Volume",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),

          ///value jumlah volume
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              "m3",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
          ),

          ///total volume
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Total Volume",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "m3",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.edit_note,
                color: accentGreen500,
              )
            ],
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 25),
            decoration: BoxDecoration(
                color: accentGreen500, borderRadius: BorderRadius.circular(5)),
            child: const Text(
              "Selesai",
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.bold, color: neutral100),
            ),
          )
        ],
      ),
    );
  }
}
