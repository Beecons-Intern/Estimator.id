import 'package:flutter/material.dart';

class ItemProfilProyek extends StatelessWidget {
  final String nama;
  final String edit;

  const ItemProfilProyek({required this.nama, required this.edit});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 35, top: 6, right: 25, bottom: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(nama),
          Container(
            width: 190,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.greenAccent,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: EdgeInsets.all(6),
              child: Text(edit),
            ),
          )
        ],
      ),
    );
  }
}
