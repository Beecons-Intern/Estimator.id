import 'package:flutter/material.dart';

class CardTemplateProyek extends StatelessWidget {
  const CardTemplateProyek({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.1,
        vertical: size.height * 0.02,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(26, 175, 171, 171),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.02),
              child: Container(
                width: size.width * 0.5,
                height: size.height * 0.15,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/200/120"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.02),
              child: Text(
                "Rumah Tinggal Sederhana",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Jenis"),
                  Text(
                    "Rumah",
                    style: TextStyle(
                      color: Colors.lightGreen,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Kaegori"),
                  Text(
                    "1 Lantai",
                    style: TextStyle(
                      color: Colors.lightGreen,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Struktur"),
                  Text(
                    "Beton Bertulang",
                    style: TextStyle(
                      color: Colors.lightGreen,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Lantai"),
                  Text(
                    "Keramik",
                    style: TextStyle(
                      color: Colors.lightGreen,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Dinding"),
                  Text(
                    "Bata Merah",
                    style: TextStyle(
                      color: Colors.lightGreen,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Atap"),
                  Text(
                    "Genteng",
                    style: TextStyle(
                      color: Colors.lightGreen,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
