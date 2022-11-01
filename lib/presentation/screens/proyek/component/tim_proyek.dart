import 'package:flutter/material.dart';

class TimProyek extends StatelessWidget {
  const TimProyek({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 241,
      height: 93,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        children: [
          Container(
            width: 241,
            decoration: const BoxDecoration(color: Colors.green),
            child: const Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "Tim Proyek",
                style: TextStyle(
                  fontSize: 9,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
            child: Container(
              width: 229,
              padding: const EdgeInsets.all(3),
              color: Colors.green,
              child: Row(
                children: const [
                  Text(
                    "No",
                    style: TextStyle(
                      fontSize: 7,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Nama Tim Proyek",
                    style: TextStyle(
                      fontSize: 7,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 35),
                  Text(
                    "Posisi",
                    style: TextStyle(
                      fontSize: 7,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 50),
                  Text(
                    "Aksi",
                    style: TextStyle(
                      fontSize: 7,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 44,
            width: 229,
            child: ListView(
              children: const [
                ListTimProyek(
                  number: "1",
                  nama: "lorem ipsum dolor",
                  posisi: "Admin Proyek",
                  aksi: "delete",
                ),
                ListTimProyek(
                  number: "2",
                  nama: "lorem ipsum dolor",
                  posisi: "Admin Proyek",
                  aksi: "delete",
                ),
                ListTimProyek(
                  number: "3",
                  nama: "lorem ipsum dolor",
                  posisi: "Admin Proyek",
                  aksi: "delete",
                ),
                ListTimProyek(
                  number: "4",
                  nama: "lorem ipsum dolor",
                  posisi: "Admin Proyek",
                  aksi: "delete",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListTimProyek extends StatelessWidget {
  final String number;
  final String nama;
  final String posisi;
  final String aksi;

  const ListTimProyek({
    Key? key,
    required this.number,
    required this.nama,
    required this.posisi,
    required this.aksi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1),
      child: Container(
        width: 229,
        padding: const EdgeInsets.all(2),
        color: Colors.grey,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                number,
                style: const TextStyle(
                  fontSize: 7,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              nama,
              style: const TextStyle(
                fontSize: 7,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 20),
            Text(
              posisi,
              style: const TextStyle(
                fontSize: 7,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 30),
            Text(
              aksi,
              style: const TextStyle(
                fontSize: 7,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}
