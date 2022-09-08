import 'package:flutter/material.dart';

import 'my_clipper.dart';

class ItemLaporan extends StatelessWidget {
  final String title;
  final List<Widget> listContent;

  const ItemLaporan({
    Key? key,
    required this.size,
    required this.title,
    required this.listContent,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.005),
      child: Stack(
        children: [
          Container(
            color: const Color.fromRGBO(237, 251, 236, 1),
            child: ExpansionTile(
              title: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.2),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              children: listContent,
            ),
          ),
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              width: size.width * 0.2,
              padding: const EdgeInsets.only(top: 15, right: 15, bottom: 10),
              color: const Color.fromRGBO(8, 158, 20, 1),
              child: const Icon(
                Icons.description,
                size: 35,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
