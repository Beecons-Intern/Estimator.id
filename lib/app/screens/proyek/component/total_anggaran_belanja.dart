import 'package:flutter/material.dart';

class TotalAnggaranBelanja extends StatelessWidget {
  final String totalName;
  final String harga;

  TotalAnggaranBelanja({
    required this.totalName,
    required this.harga,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 130,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 139, 245, 19),
                borderRadius: BorderRadius.circular(4)),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Center(
                child: Text(
                  totalName,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            width: 165,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 139, 245, 19),
                ),
                borderRadius: BorderRadius.circular(4)),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 7, horizontal: 24),
              child: Padding(
                padding: EdgeInsets.all(3),
                child: Text(
                  harga,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
