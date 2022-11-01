import 'package:flutter/material.dart';

class CardTambahPekerjaan extends StatelessWidget {
  final String title;
  final Color background;

  const CardTambahPekerjaan({
    Key? key,
    required this.size,
    required this.title,
    required this.background,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: size.height * 0.005,
        horizontal: size.height * 0.03,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.05,
        vertical: size.height * 0.02,
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: size.width * 0.65,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                width: size.width * 0.12,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (() => showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.amber),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Icon(
                                        Icons.close_rounded,
                                        color: Colors.amber,
                                        size: 17,
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    "assets/Images/image 68.png",
                                  ),
                                ],
                              ),
                              content: const Text(
                                "Fitur kelola kolesi hanya tersedia untuk akun premimun. \n\n Nimati fitur tanpa batas dengan beralih ke akun premium dan dapatkan harga spesial Khusus untuk anda.",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              actions: [
                                Center(
                                  child: Container(
                                    width: size.width * 1,
                                    padding: EdgeInsets.symmetric(
                                        vertical: size.height * 0.01),
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
                          )),
                      child: const Icon(
                        Icons.bookmark_border,
                        color: Color.fromRGBO(8, 158, 20, 1),
                      ),
                    ),
                    const Icon(
                      Icons.check_box_outline_blank,
                      color: Color.fromRGBO(8, 158, 20, 1),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: size.width * 0.8,
            margin: EdgeInsets.symmetric(vertical: size.width * 0.02),
            height: 2,
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: size.width * 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(
                    text: "Satuan: ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                      TextSpan(
                        text: "m3",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    text: "Harga Satuan: ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                      TextSpan(
                        text: "Rp.199.000",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    text: "Sumber: ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                      TextSpan(
                        text: "Permen PUPR Nomor 28/PRT/M/2016",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
