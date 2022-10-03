import 'package:flutter/material.dart';

class CardItemUpah extends StatelessWidget {
  final String title;
  final String satuan;
  final String harga;
  final String spesifikasi;
  final String sumber;
  final String merk;

  const CardItemUpah({
    Key? key,
    required this.size,
    required this.title,
    required this.satuan,
    required this.harga,
    required this.spesifikasi,
    required this.sumber,
    required this.merk,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.01),
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.02, vertical: size.height * 0.02),
      decoration: BoxDecoration(
          border: Border.all(
        color: const Color.fromRGBO(8, 158, 20, 1),
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width * 0.7,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.edit_note,
                    size: 18,
                    color: Color.fromRGBO(8, 158, 20, 1),
                  ),
                  GestureDetector(
                    onTap: (() => showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Nama Bahan",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    GestureDetector(
                                      onTap: () => Navigator.pop(context),
                                      child: const Icon(
                                        Icons.cancel,
                                        color: Color.fromRGBO(8, 158, 20, 1),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: size.height * 0.01),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.01,
                                      vertical: size.height * 0.01),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(206, 236, 208, 1),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Text(
                                    "Accacia supasleek close coupled Toilet CL23075-6DACTCBT",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Harga Dasar",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                Container(
                                  width: size.width,
                                  margin: EdgeInsets.symmetric(
                                      vertical: size.height * 0.01),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.01,
                                      vertical: size.height * 0.01),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(206, 236, 208, 1),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Text(
                                    "Rp. 10.500.000",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Satuan",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                const Text(
                                  "Satuan",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                const Text(
                                  "Merk",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                const Text(
                                  "American Standard",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                const Text(
                                  "Sumber",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "PT. American Standard Indonesia",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Icon(
                                      Icons.drive_file_rename_outline,
                                      color: Color.fromRGBO(16, 174, 11, 1),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )),
                    child: const Icon(
                      Icons.info,
                      color: Color.fromRGBO(8, 158, 20, 1),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width * 0.4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Sumber"),
                      Text(
                        sumber,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(218, 146, 16, 1),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Satuan"),
                    Text(
                      satuan,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(218, 146, 16, 1),
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Harga Dasar"),
                    Text(
                      harga,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(218, 146, 16, 1),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width * 0.44,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Merk"),
                      Text(
                        merk,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(218, 146, 16, 1),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width * 0.41,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Spesifikasi"),
                      Text(
                        spesifikasi,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(218, 146, 16, 1),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
