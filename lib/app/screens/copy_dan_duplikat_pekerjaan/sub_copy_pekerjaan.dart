import 'package:flutter/material.dart';

import '../../Widget/button.dart';
import 'component/card_estimasi_anggaran.dart';
import '../../Widget/search.dart';

class SubCopyPekerjaan extends StatelessWidget {
  const SubCopyPekerjaan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: const Text(
          "Estimasi Anggaran",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Searching(size: size),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05, vertical: size.height * 0.01),
            child: Row(
              children: [
                Button(
                  size: size,
                  icon: Icons.add_circle,
                  title: "Tambah Kategori",
                ),
                SizedBox(width: size.width * 0.02),
                Button(
                  size: size,
                  icon: Icons.file_upload_outlined,
                  title: "Impor Volume",
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                CardExpandedTile(size: size),
                CardExpandedTile(size: size),
                CardExpandedTile(size: size),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardExpandedTile extends StatelessWidget {
  const CardExpandedTile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: ExpansionTile(
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Pekerjaan Persiapan",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(35, 15, 23, 1),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.add_circle,
                      size: 20,
                    ),
                    GestureDetector(
                      onTap: (() => showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(218, 146, 16, 1),
                                      ),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Icon(
                                    Icons.clear,
                                    size: 12,
                                    color: Color.fromRGBO(218, 146, 16, 1),
                                  ),
                                ),
                              ),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: size.height * 0.05),
                                    child: Text(
                                      "HAPUS PEKERJAAN ?",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color:
                                              Color.fromRGBO(234, 24, 35, 1)),
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text:
                                          "Yakin Anda akan menghapus pekerjaan",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 85, 84, 84)),
                                      children: [
                                        TextSpan(
                                          text:
                                              " pada kategori pekerjaan persiapan?",
                                          style: TextStyle(
                                              color: Color.fromRGBO(0, 0, 0, 1),
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                  SizedBox(height: size.height * 0.02),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.warning,
                                        size: 25,
                                        color: Color.fromRGBO(183, 22, 32, 0.7),
                                      ),
                                      Text(
                                        " Peringatan!",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(183, 22, 32, 1)),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Semua rincian yang berkaitan dengan pekerjaan tersebut akan ikut terhapus.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                      child: Icon(
                        Icons.delete_sharp,
                        size: 20,
                      ),
                    ),
                    Icon(
                      Icons.edit,
                      size: 20,
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                const Text(
                  "Harga",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(93, 201, 65, 1),
                  ),
                ),
                SizedBox(width: size.width * 0.08),
                const Text(
                  "Rp. 1.900.000",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(93, 201, 65, 1),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  "%",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(218, 146, 16, 1),
                  ),
                ),
                SizedBox(width: size.width * 0.15),
                const Text(
                  "100.000 %",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(218, 146, 16, 1),
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 3,
            )
          ],
        ),
        children: [
          CardEstimasiAnggaran(size: size),
          CardEstimasiAnggaran(size: size),
        ],
      ),
    );
  }
}
