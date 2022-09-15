import 'package:flutter/material.dart';

import 'card_estimasi_anggaran.dart';

class CardExpandedTile extends StatefulWidget {
  const CardExpandedTile({
    Key? key,
    required this.size,
    this.isSelected = false,
  }) : super(key: key);

  final Size size;
  final bool isSelected;

  @override
  State<CardExpandedTile> createState() => _CardExpandedTileState();
}

class _CardExpandedTileState extends State<CardExpandedTile> {
  int? anggaran;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: ((context, index) => Container(
            margin: EdgeInsets.symmetric(horizontal: widget.size.width * 0.05),
            child: Column(
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
                        const Icon(
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
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color:
                                                Color.fromRGBO(218, 146, 16, 1),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Icon(
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
                                            vertical: size.height * 0.01),
                                        child: const Text(
                                          "HAPUS PEKERJAAN ?",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromRGBO(
                                                  234, 24, 35, 1)),
                                        ),
                                      ),
                                      RichText(
                                        text: const TextSpan(
                                          text:
                                              "Yakin Anda akan menghapus pekerjaan",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 85, 84, 84)),
                                          children: [
                                            TextSpan(
                                              text:
                                                  " pada kategori pekerjaan persiapan?",
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                      SizedBox(height: size.height * 0.02),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.warning,
                                            size: 25,
                                            color: Color.fromRGBO(
                                                183, 22, 32, 0.7),
                                          ),
                                          Text(
                                            " Peringatan!",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    183, 22, 32, 1)),
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      const Text(
                                        "Semua rincian yang berkaitan dengan pekerjaan tersebut akan ikut terhapus.",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                        ),
                                        textAlign: TextAlign.justify,
                                      )
                                    ],
                                  ),
                                ),
                              )),
                          child: const Icon(
                            Icons.delete_sharp,
                            size: 20,
                          ),
                        ),
                        const Icon(
                          Icons.edit,
                          size: 20,
                        ),
                        if (widget.isSelected == true) ...[
                          GestureDetector(
                            onTap: () {
                              if (anggaran == null) {
                                setState(() {
                                  anggaran = index;
                                });
                              } else if (anggaran != null &&
                                  anggaran == index) {
                                setState(() {
                                  anggaran = null;
                                });
                              }
                            },
                            child: Icon(
                              anggaran != null && anggaran == index
                                  ? Icons.expand_more
                                  : Icons.expand_less,
                              color: anggaran != null && anggaran == index
                                  ? Colors.red
                                  : Colors.black,
                            ),
                          )
                        ]
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
                    SizedBox(width: widget.size.width * 0.08),
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
                    SizedBox(width: widget.size.width * 0.15),
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
                const Divider(thickness: 3),
                if (anggaran != null && anggaran == index) ...[
                  CardEstimasiAnggaran(size: size)
                ]
              ],
            ),
          )),
    );
  }
}
