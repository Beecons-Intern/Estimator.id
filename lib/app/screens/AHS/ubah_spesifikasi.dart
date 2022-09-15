import 'package:estimator_id/app/screens/AHS/Component/item_menu_list.dart';
import 'package:estimator_id/app/utilities/colors.dart';
import 'package:flutter/material.dart';

class UbahSpesifikasi extends StatefulWidget {
  const UbahSpesifikasi({
    Key? key,
  }) : super(key: key);

  @override
  State<UbahSpesifikasi> createState() => _UbahSpesifikasiState();
}

class _UbahSpesifikasiState extends State<UbahSpesifikasi> {
  ///list item menu button
  final List itemList = [
    // [title, isSelected]
    ["Proyek Terkini", false],
    ["Suplier", true],
    ["SHBJ", false],
    ["IKK BPS", false],
    ["Survei", false],
  ];

  ///tap item button
  void menuTypeSelected(int index) {
    setState(() {
      //untuk select button
      for (int i = 0; i < itemList.length; i++) {
        itemList[i][1] = false;
      }
      itemList[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: neutral100,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back_ios, color: neutral500),
        ),
        title: const Text(
          "Ubah Spesifikasi",
          style: TextStyle(color: neutral500),
        ),
      ),
      body: Column(
        children: [
          /// untuk ubah spesifikasi nama bahan, spesifikasi, dan merk
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05, vertical: size.height * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// untutk nama bahan dan input nama bahan
                const Text(
                  "Nama Bahan",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: neutral500,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: primary100,
                      borderRadius: BorderRadius.circular(5)),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: 'Beton balok border 20/40',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          fontSize: 12,
                          color: neutral500,
                        )),
                  ),
                ),

                ///untuk spesifikasi dan input spesifikasi
                const Text(
                  "Spesifikasi",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: neutral500,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: primary100,
                      borderRadius: BorderRadius.circular(5)),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: '40 kg',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          fontSize: 12,
                          color: neutral500,
                        )),
                  ),
                ),

                ///unutk merk dan input merk
                const Text(
                  "Merk",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: neutral500,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: primary100,
                      borderRadius: BorderRadius.circular(5)),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'hilcim',
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: 12,
                        color: neutral500,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: size.height * 0.02),

                /// button ubah dan batal
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ///button berbaharui
                    GestureDetector(
                      child: Container(
                        width: size.width * 0.25,
                        decoration: const BoxDecoration(
                          color: Color(0xFF089E14),
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(20), right: Radius.zero),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 11,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "PERBARUI",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    ///button batal
                    GestureDetector(
                      child: Container(
                        width: size.width * 0.25,
                        decoration: const BoxDecoration(
                          color: Color(0xFFECD42B),
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(20), left: Radius.zero),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.cancel,
                                color: Colors.white,
                                size: 11,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "BATAL",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          const Divider(thickness: 2, height: 2),

          ///schrolling supplier, sbhj, estimator dan lain lain
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: itemList.length,
              itemBuilder: (context, index) {
                return ItemMenuList(
                    title: itemList[index][0],
                    isSelected: itemList[index][1],
                    onTap: () {
                      menuTypeSelected(index);
                    });
              },
            ),
          ),

          ///content ubah spesifikasi
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  color: index % 2 == 0
                      ? const Color.fromARGB(15, 7, 255, 201)
                      : Colors.white,
                  child: Column(
                    children: [
                      ///header card
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              ///title header
                              Text(
                                "Nama Bahan",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),

                              ///sub title header
                              Text(
                                "Beton balok  bordes 20/40",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),

                          ///button header
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: const Color(0XFF089E14),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text(
                              "PILIH",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),

                      ///garis pemisah header body card
                      const Divider(thickness: 2),

                      ///body card
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "Satuan:",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  " m3",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  "Harga Dasar:",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  " Rp. 3.999.000",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  "Merk:",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  " holcim",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  "Spesifikasi:",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  " 40 kg",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  "Sumber:",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  " Perbup Sleman No 25 Tahun 2019",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
