import 'package:flutter/material.dart';

import 'staggered_grid.dart';

class ProfileProyek extends StatelessWidget {
  const ProfileProyek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 355,
            height: 55,
            margin: EdgeInsets.only(
                top: size.height * 0.08, bottom: size.height * 0.01),
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
          ),
          Center(
            child: SizedBox(
              width: size.width * 0.95,
              height: size.height * 0.84,
              child: stairedLayout(context),
            ),
          ),
        ],
      ),
    );
  }
}
