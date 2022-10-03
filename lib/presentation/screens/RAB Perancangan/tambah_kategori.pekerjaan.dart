import 'package:flutter/material.dart';

class TambahKategoriPekerjaan extends StatelessWidget {
  const TambahKategoriPekerjaan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Tentukan Kategori Pekerjaan",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: const BoxDecoration(
                color: Color(0XFF089E14),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "No",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Kategori Pekerjaan",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Aksi",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) => Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color(0XFFCEECD0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${index + 1}",
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Pekerjaan Persiapan",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: () => showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: Align(
                                alignment: Alignment.topRight,
                                child: GestureDetector(
                                  onTap: () => Navigator.pop(context),
                                  child: const Icon(Icons.cancel),
                                ),
                              ),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  RichText(
                                      text: const TextSpan(
                                    text: "HAPUS",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                    children: [
                                      TextSpan(
                                        text: " KATEGORI PEKERJAAN",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16),
                                      )
                                    ],
                                  )),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.1,
                                        vertical: 10),
                                    child: RichText(
                                        text: const TextSpan(
                                      text:
                                          "Yakin anda akan menghapus kategori pekerjaan",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                      children: [
                                        TextSpan(
                                          text: " PEKERJAAN Persiapan?",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        )
                                      ],
                                    )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: size.width * 0.1,
                                          child: const Icon(
                                            Icons.warning,
                                            color: Color(0XFFB71620),
                                          ),
                                        ),
                                        SizedBox(
                                          width: size.width * 0.5,
                                          child: RichText(
                                              textAlign: TextAlign.justify,
                                              text: const TextSpan(
                                                text: "Peringatan!",
                                                style: TextStyle(
                                                    color: Color(0XFFB71620),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12),
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        " semua rincian yang berkaitan dengan kategori pekerjaan tersebut akan ikut terhapus",
                                                    style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 63, 62, 62),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 12,
                                                    ),
                                                  )
                                                ],
                                              )),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            decoration: BoxDecoration(
                                color: const Color(0XFF089E14),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                  size: 12,
                                ),
                                Text(
                                  "Hapus",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${index + 1}",
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Pekerjaan Persiapan",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              color: const Color(0XFF089E14),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.delete,
                                color: Colors.white,
                                size: 12,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "Hapus",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.cancel),
                  ),
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: size.width,
                      color: const Color(0XFFBDDFC1),
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.center,
                      child: const Text(
                        "Tambah Kategori",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0XFFBDDFC1),
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        onTap: () {},
                        decoration: const InputDecoration(
                            hintText: 'masukan nama pekerjaan',
                            suffixIcon: Icon(Icons.person),
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
                actions: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0XFF089E14),
                        borderRadius: BorderRadius.circular(5)),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "Simpan",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: const Color(0XFF089E14),
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                child: Text(
                  "Tambah Kategori",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
