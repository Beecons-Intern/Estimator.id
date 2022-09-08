import 'package:flutter/material.dart';

import '../../Widget/button.dart';
import '../../Widget/search.dart';
import 'component/card_item_upah.dart';
import 'component/card_rincian_harga.dart';
import 'component/content_empty_laporan.dart';
import 'component/item_laporan.dart';

class LaporanRab extends StatelessWidget {
  const LaporanRab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        title: Text(
          "Laporan",
          style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05, vertical: size.height * 0.02),
            decoration: const BoxDecoration(
                color: Color.fromRGBO(8, 158, 20, 1),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                )),
            child: const Text(
              "Rumah Sederhana",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),

          ///item laporan
          Expanded(
            child: ListView(
              children: [
                ItemLaporan(
                  size: size,
                  title: "Rincian Bahan",
                  listContent: [
                    Searching(size: size),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      child: Row(
                        children: [
                          Button(
                            size: size,
                            icon: Icons.refresh,
                            title: "Reload",
                          ),
                          const SizedBox(width: 10),
                          Button(
                            size: size,
                            icon: Icons.upload,
                            title: "Ekspor Data",
                          ),
                        ],
                      ),
                    ),
                    CardItemUpah(
                      size: size,
                      title:
                          'Accacia supasleek close coupled Toilet CL23075-6DACTCBT',
                      satuan: 'Unit',
                      harga: 'Rp. 10.500.000',
                      spesifikasi:
                          'Dual flush 26/4 crystalseek slowclosing seat Cover S-Trap Rough in: 305 mm',
                      sumber: 'PT. American Standard Indonesia',
                      merk: 'Amercan Standard',
                    )
                  ],
                ),
                ItemLaporan(
                  size: size,
                  title: "Rincian Upah",
                  listContent: [
                    Searching(size: size),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      child: Row(
                        children: [
                          Button(
                            size: size,
                            icon: Icons.refresh,
                            title: "Reload",
                          ),
                          const SizedBox(width: 10),
                          Button(
                            size: size,
                            icon: Icons.upload,
                            title: "Ekspor Data",
                          ),
                        ],
                      ),
                    ),
                    CardItemUpah(
                      size: size,
                      title: 'Informan Data Lapangan',
                      satuan: 'OB',
                      harga: 'Rp. 50.000',
                      spesifikasi: 'Standard',
                      sumber: 'Pergub DIY No. 52 Tahun  2020',
                      merk: 'Standard',
                    ),
                    CardItemUpah(
                        size: size,
                        title: 'Juru Gudang ',
                        satuan: 'OH',
                        harga: 'Rp. 115.000',
                        spesifikasi: 'Standart',
                        sumber: 'Kepbup Sleman No. 47.2 Tahun 2021',
                        merk: 'Standard')
                  ],
                ),
                ItemLaporan(
                  size: size,
                  title: "Rincian Alat",
                  listContent: [
                    Searching(size: size),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      child: Row(
                        children: [
                          Button(
                            size: size,
                            icon: Icons.refresh,
                            title: "Reload",
                          ),
                          const SizedBox(width: 10),
                          Button(
                            size: size,
                            icon: Icons.upload,
                            title: "Ekspor Data",
                          ),
                        ],
                      ),
                    ),
                    CardItemUpah(
                      size: size,
                      title: 'Alat DCP',
                      satuan: 'Unit Hari',
                      harga: 'Rp. 152.000',
                      spesifikasi: 'Standard',
                      sumber: 'Unit Hari',
                      merk: 'Standard',
                    ),
                    CardItemUpah(
                      size: size,
                      title:
                          'Alat Penakar Hujan Pagar Kawat Harmonika 1x1x5,1 m',
                      satuan: 'm1',
                      harga: 'Rp. 2.037.000',
                      spesifikasi: 'Standard',
                      sumber: 'Pergub No 55 Tahun 2019',
                      merk: 'Standar',
                    )
                  ],
                ),
                ItemLaporan(
                  size: size,
                  title: "Rincian Harga Satuan",
                  listContent: [
                    Searching(size: size),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      child: Row(
                        children: [
                          Button(
                            size: size,
                            icon: Icons.refresh,
                            title: "Reload",
                          ),
                          SizedBox(width: 10),
                          Button(
                            size: size,
                            icon: Icons.upload,
                            title: "Ekspor Data",
                          ),
                        ],
                      ),
                    ),
                    CardRincianHarga(
                      size: size,
                      isSelected: true,
                    ),
                  ],
                ),
                ItemLaporan(
                  size: size,
                  title: "Rincian Volume",
                  listContent: [ContentEmptyLaporan(size: size)],
                ),
                ItemLaporan(
                  size: size,
                  title: "RAB",
                  listContent: [ContentEmptyLaporan(size: size)],
                ),
                ItemLaporan(
                  size: size,
                  title: "Rekapitulasi RAB",
                  listContent: [
                    ContentEmptyLaporan(size: size),
                  ],
                ),
                ItemLaporan(
                  size: size,
                  title: "Rekapitulassi Bahan",
                  listContent: [ContentEmptyLaporan(size: size)],
                ),
                ItemLaporan(
                  size: size,
                  title: "Rekapitulasi Upah",
                  listContent: [
                    ContentEmptyLaporan(size: size),
                  ],
                ),
                ItemLaporan(
                  size: size,
                  title: "Rekapitulasi Alat",
                  listContent: [ContentEmptyLaporan(size: size)],
                )
              ],
            ),
          ),

          ///button
          GestureDetector(
            onTap: () => showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset("assets/Images/export 1.png"),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: size.height * 0.01),
                      child: const Text(
                        "Persetujuan Ekspor Laporan",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Text(
                      "Pastikan semua data peoyek telah anda periksa dan tidak ada rincian harga yang kosong",
                      style: TextStyle(
                        color: Color.fromARGB(255, 101, 101, 101),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            child: Container(
              margin: EdgeInsets.symmetric(
                  vertical: size.height * 0.02, horizontal: size.width * 0.1),
              padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(8, 158, 20, 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.file_upload,
                    size: 25,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Ekspor semua data",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
