import 'package:dotted_border/dotted_border.dart';
import 'package:estimator_id/app/screens/RAB%20Perancangan/tambah_kategori.pekerjaan.dart';

import 'package:flutter/material.dart';

import '../../Widget/button.dart';
import '../../Widget/search.dart';
import 'component/card_expanded_tile.dart';

class SubCopyPekerjaan extends StatefulWidget {
  const SubCopyPekerjaan({Key? key, this.isSelected = false}) : super(key: key);

  final bool isSelected;

  @override
  State<SubCopyPekerjaan> createState() => _SubCopyPekerjaanState();
}

class _SubCopyPekerjaanState extends State<SubCopyPekerjaan> {
  int? anggaran;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                horizontal: size.width * 0.05, vertical: size.height * 0.02),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        /// kalo mau ganti sama pop up tinggal ganti aja pake AlertTambahKategoriPekerjaan
                        /// ini pake page kategori pekerjaan
                        builder: (context) => const TambahKategoriPekerjaan(),
                      )),
                  child: Button(
                    size: size,
                    icon: Icons.edit_note,
                    title: "Tambah Kategori",
                  ),
                ),
                SizedBox(width: size.width * 0.02),
                GestureDetector(
                  onTap: (() => showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text(
                            "Impor Volume",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: RichText(
                                  textAlign: TextAlign.start,
                                  text: const TextSpan(
                                    text: "belum memiliki template?",
                                    style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontSize: 12,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: " unduh Template",
                                        style: TextStyle(
                                          color: Color.fromRGBO(8, 125, 16, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: DottedBorder(
                                  borderType: BorderType.RRect,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.15,
                                      vertical: size.height * 0.1),
                                  child: Container(
                                    width: size.width * 0.4,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 5),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 122, 121, 121),
                                    )),
                                    child: const Text(
                                      "Unggah template volume",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 122, 121, 121),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Text(
                                "Jika anda melakukan impor, seluruh rincian volume pekerjaan yang telah dimasukan sebelumnya akan terhapus dan digantikan dengan volume dari file template.",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.05,
                                    child: const Icon(
                                      Icons.warning,
                                      color: Colors.red,
                                      size: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.6,
                                    child: const Text(
                                      "Peringatan! Pastikan Andan telah melakukan backup rincian volume sebelumnya!",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 12,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: size.width * 0.04),
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(8, 125, 16, 1),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.file_upload,
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                      Text(
                                        "Impor Volume",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1)),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                  child: Button(
                    size: size,
                    icon: Icons.file_upload_outlined,
                    title: "Impor Volume",
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                CardExpandedTile(size: size, isSelected: true),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: size.width * 0.05, vertical: size.height * 0.01),
            padding: const EdgeInsets.all(5),
            color: const Color.fromARGB(104, 12, 249, 4),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: size.width * 0.25,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "JUMLAH HARGA",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "PPN 11.00 %",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Total Harga",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Rp. 7.600.000",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "Rp. 863.000",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "Rp. 8.436.000",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "100.00%",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: size.width,
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(
                vertical: size.height * 0.02, horizontal: size.width * 0.05),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromRGBO(8, 125, 16, 1),
            ),
            child: const Center(
              child: Text(
                "Lihat laporan",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
