import 'package:flutter/material.dart';

import 'component/card_tambah_pekerjaan.dart';

class TambahPekerjaan extends StatelessWidget {
  const TambahPekerjaan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: const Center(
          child: Text(
            "Tambah Pekerjaan",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05, vertical: size.height * 0.01),
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "item pekerjaan persiapan",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.photo_library,
                  color: Colors.white,
                  size: 20,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05,
              vertical: size.height * 0.005,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Pekerjaan:",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 15,
                  right: 10,
                  bottom: 15,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromRGBO(8, 158, 20, 1),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Masukan nama perkerjaan",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(150, 150, 150, 1),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(
                      Icons.search_rounded,
                      size: 18,
                      color: Color.fromRGBO(150, 150, 150, 1),
                    )
                  ],
                ),
              ),
            ]),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05,
              vertical: size.height * 0.005,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    "Sumber:",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 15,
                    right: 10,
                    bottom: 15,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromRGBO(8, 158, 20, 1),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(150, 150, 150, 1),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05,
            ),
            child: const Text(
              "menampilkan 2,094 data",
            ),
          ),
          SizedBox(
            width: size.width * 1,
            height: size.height * 0.52,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                CardTambahPekerjaan(
                  size: size,
                  title: "Pengukuran dan pemasangan bauwplank",
                  background: const Color.fromRGBO(237, 251, 235, 1),
                ),
                CardTambahPekerjaan(
                  size: size,
                  title: "Pengukuran",
                  background: const Color.fromRGBO(255, 255, 255, 1),
                ),
                CardTambahPekerjaan(
                  size: size,
                  title: "Pengukuran ",
                  background: const Color.fromRGBO(237, 251, 235, 1),
                ),
                CardTambahPekerjaan(
                  size: size,
                  title: "Pengukuran ",
                  background: const Color.fromRGBO(237, 251, 235, 1),
                ),
                CardTambahPekerjaan(
                  size: size,
                  title: "Pengukuran ",
                  background: const Color.fromRGBO(237, 251, 235, 1),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              width: size.width * 1,
              margin: EdgeInsets.symmetric(
                  vertical: size.height * 0.01, horizontal: size.width * 0.05),
              padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(8, 158, 20, 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                "Selesai & Simpan",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
