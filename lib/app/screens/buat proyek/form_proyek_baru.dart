import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'Component/button.dart';
import 'Component/item_document_tambahan.dart';

class FormProyekBaru extends StatefulWidget {
  // const FormProyekBaru({Key? key}) : super(key: key);

  @override
  State<FormProyekBaru> createState() => _FormProyekBaruState();
}

class _FormProyekBaruState extends State<FormProyekBaru> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List<String> listKota = [
      "Surabaya",
      "Yogyakarta",
      "Bandung",
      "Jakarta"
    ];
    String dropdownValue = listKota.first;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 228, 228),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Center(
          child: Text(
            "Lengkapi Profil Proyek",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, vertical: size.height * 0.02),
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    width: size.width * 0.2,
                    height: size.height * 0.112,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://picsum.photos/200/300"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: size.width * 0.04),
                  DottedBorder(
                    color: Colors.lightGreen,
                    padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.04,
                      horizontal: size.width * 0.04,
                    ),
                    strokeWidth: 1,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: "+ Tambah",
                          style: TextStyle(
                            color: Colors.lightGreen,
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                              text: "\nFoto",
                              style: TextStyle(
                                  color: Colors.lightGreen, fontSize: 12),
                            )
                          ]),
                    ),
                  ),
                ],
              )),
          Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * 0.001),
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: size.height * 0.02,
                horizontal: size.width * 0.05,
              ),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Nama Proyek",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                      children: [
                        TextSpan(
                          text: " *",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "Rumah Tingaal Mewah",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * 0.001),
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: size.height * 0.02,
                horizontal: size.width * 0.05,
              ),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Lokasi Proyek",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                      children: [
                        TextSpan(
                          text: " *",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: DropdownButton<String>(
                          value: dropdownValue,
                          isExpanded: true,
                          icon: Icon(Icons.arrow_drop_down),
                          items: listKota
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              dropdownValue = value!;
                            });
                          }),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * 0.001),
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: size.height * 0.02,
                horizontal: size.width * 0.05,
              ),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Pemilik Proyek",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                      children: [
                        TextSpan(
                          text: " *",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "Irvan Guntur Rahayu",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * 0.001),
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: size.height * 0.02,
                horizontal: size.width * 0.05,
              ),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Jasa Kontraktor",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                      children: [
                        TextSpan(
                          text: " *",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "10.00%",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * 0.001),
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: size.height * 0.02,
                horizontal: size.width * 0.05,
              ),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Pajak",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                      children: [
                        TextSpan(
                          text: " *",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "11.00%",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * 0.001),
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: size.height * 0.02,
                horizontal: size.width * 0.05,
              ),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dukumen Tambahan",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  ItemDokumenTambahan(
                    icon: "assets/Images/PDF.png",
                    title: "Detail Proyek Pembangunan Yogja.pdf",
                    value: 0.4,
                    persen: "40%",
                  ),
                  ItemDokumenTambahan(
                    icon: "assets/Images/Google Docs.png",
                    title: "Deskripsi Gedung.docs",
                    value: 0.85,
                    persen: "85%",
                  ),
                  ItemDokumenTambahan(
                    icon: "assets/Images/XLS.png",
                    title: "RAB Rumah Pok Bambang.xls",
                    value: 1,
                    persen: "100%",
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.03),
                    child: Center(
                      child: DottedBorder(
                          padding: EdgeInsets.all(10),
                          borderType: BorderType.RRect,
                          radius: Radius.circular(5),
                          color: Colors.green,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/Images/Import Pdf.png",
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Upload Document",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.green,
                                ),
                              )
                            ],
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: size.width * 0.001),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05,
                vertical: size.height * 0.01,
              ),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Keterangan Lain",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  Container(
                    height: size.height * 0.1,
                    child: Text(
                      "Masukan keterangan (optional)",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          ButtonProfilProyek(size: size)
        ],
      ),
    );
  }
}
