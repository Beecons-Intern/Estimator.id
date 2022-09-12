import 'package:flutter/material.dart';

class AlertTAmbahKategoriPekerjaan extends StatelessWidget {
  const AlertTAmbahKategoriPekerjaan({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        width: size.width,
        height: size.height * 0.3,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color(0XFF089E14),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "No",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Kategori Pekerjaan",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Aksi",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: const Color(0XFFCEECD0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${index + 1}",
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Text(
                            "Pekerjaan Persiapan",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color(0XFF089E14),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.delete,
                                  size: 12,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Hapus",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${index + 1}",
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Text(
                            "Pekerjaan Struktural",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color(0XFF089E14),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.delete,
                                  size: 12,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Hapus",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
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
            )
          ],
        ),
      ),
      actions: [
        Center(
          child: Container(
            width: size.width,
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            decoration: BoxDecoration(
                color: const Color(0XFF089E14),
                borderRadius: BorderRadius.circular(5)),
            child: const Center(
              child: Text(
                "Tambah Kategori",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
