import 'package:flutter/material.dart';

class cari_proyek extends StatelessWidget {
  const cari_proyek({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 55, bottom: 22),
      width: 355,
      height: 55,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Cari Proyek Saya"),
            Icon(Icons.search),
          ],
        ),
      ),
    );
  }
}
