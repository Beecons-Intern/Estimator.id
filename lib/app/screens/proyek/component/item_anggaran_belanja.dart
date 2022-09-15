import 'package:flutter/material.dart';

class ItemAnggaranBelanja extends StatelessWidget {
  final String namaAnggaran;
  final String harga;
  final String persen;

  ItemAnggaranBelanja({
    required this.namaAnggaran,
    required this.harga,
    required this.persen,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 35,
        top: 7,
        right: 10,
        bottom: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            namaAnggaran,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  width: 125,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.lightGreen, width: 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(
                      harga,
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(width: 6),
                Container(
                  width: 45,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.lightGreen, width: 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      persen,
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
