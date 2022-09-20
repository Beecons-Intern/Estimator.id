import 'package:flutter/material.dart';

class CardEstimasiAnggaran extends StatelessWidget {
  const CardEstimasiAnggaran({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(230, 245, 232, 1),
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.01, vertical: size.height * 0.01),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.03, vertical: size.height * 0.01),
            color: const Color.fromRGBO(189, 223, 193, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width * 0.6,
                  child: const Text("Pengukuran dan  pemasangan BouwPlank"),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.add_circle,
                      size: 20,
                      color: Color.fromRGBO(9, 171, 21, 1),
                    ),
                    SizedBox(width: size.width * 0.01),
                    GestureDetector(
                      onTap: () => showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.1,
                                    vertical: size.height * 0.05),
                                decoration: BoxDecoration(
                                    color: const Color.fromRGBO(8, 158, 20, 1),
                                    borderRadius: BorderRadius.circular(70)),
                                child: const Icon(
                                  Icons.done,
                                  size: 50,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                              Container(
                                width: size.width * 0.5,
                                padding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.02),
                                child: const Text(
                                  "Data item pekerjaan  berhasil Dicopy",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      child: const Icon(
                        Icons.copy,
                        size: 20,
                        color: Color.fromRGBO(9, 171, 21, 1),
                      ),
                    ),
                    SizedBox(width: size.width * 0.01),
                    const Icon(
                      Icons.delete,
                      size: 20,
                      color: Color.fromRGBO(9, 171, 21, 1),
                    )
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width * 0.2,
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.02,
                    vertical: size.height * 0.01),
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.01,
                    vertical: size.height * 0.01),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromRGBO(8, 158, 20, 1),
                  ),
                ),
                child: const Text(
                  "30 m3",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: size.width * 0.57,
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.02,
                    vertical: size.height * 0.01),
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.01,
                    vertical: size.height * 0.01),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromRGBO(8, 158, 20, 1),
                  ),
                ),
                child: const Text(
                  "Rp. 199.000/m3",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Container(
            width: size.width * 0.81,
            margin: EdgeInsets.symmetric(
                horizontal: size.width * 0.02, vertical: size.height * 0.01),
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.01, vertical: size.height * 0.01),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(8, 158, 20, 1),
              ),
            ),
            child: const Text(
              "Rp. 199.000/m3",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: size.width * 0.81,
            margin: EdgeInsets.symmetric(
                horizontal: size.width * 0.02, vertical: size.height * 0.01),
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.01, vertical: size.height * 0.01),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(8, 158, 20, 1),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: size.width * 0.65,
                      child: const Text(
                        "Beton balok border 20/40 ",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                    Container(
                      child: PopupMenuButton(
                        icon: const Icon(Icons.more_vert),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            height: size.height * 0.03,
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.mode_edit_outline_sharp,
                                  size: 20,
                                ),
                                SizedBox(width: size.width * 0.02),
                                const Text(
                                  "Edit nama",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            height: size.height * 0.03,
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.mode_edit_outline_sharp,
                                  size: 20,
                                ),
                                SizedBox(width: size.width * 0.02),
                                const Text(
                                  "Edit AHS",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            height: size.height * 0.03,
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.mode_edit_outline_sharp,
                                  size: 20,
                                ),
                                SizedBox(width: size.width * 0.02),
                                const Text(
                                  "Edit Volume",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            height: size.height * 0.03,
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.copy,
                                  size: 20,
                                ),
                                SizedBox(width: size.width * 0.02),
                                const Text(
                                  "Copy",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            height: size.height * 0.03,
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.dynamic_feed,
                                  size: 20,
                                ),
                                SizedBox(width: size.width * 0.02),
                                const Text(
                                  "Duplikat",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                            onTap: () {
                              Future.delayed(
                                Duration(seconds: 0),
                                () => showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: size.width * 0.1,
                                              vertical: size.height * 0.05),
                                          decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  8, 158, 20, 1),
                                              borderRadius:
                                                  BorderRadius.circular(70)),
                                          child: const Icon(
                                            Icons.done,
                                            size: 50,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                        Container(
                                          width: size.width * 0.5,
                                          padding: EdgeInsets.symmetric(
                                              vertical: size.height * 0.02),
                                          child: const Text(
                                            "Data item pekerjaan  berhasil Diduplikat",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          PopupMenuItem(
                            height: size.height * 0.03,
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.delete,
                                  size: 20,
                                ),
                                SizedBox(width: size.width * 0.02),
                                const Text(
                                  "Hapus",
                                  style: TextStyle(
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
                  ],
                ),
                SizedBox(
                  width: size.width * 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Volume",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                      Text(
                        "Satuan",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                      Text(
                        "Harga Satuan",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width * 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "45",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(218, 146, 16, 1),
                        ),
                      ),
                      Text(
                        "m3",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(218, 146, 16, 1),
                        ),
                      ),
                      Text(
                        "Rp. 3.999.000",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(218, 146, 16, 1),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "%",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    SizedBox(width: size.width * 0.22),
                    const Text(
                      "Harga",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * 0.1,
                      child: const Text(
                        "0.00",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                    SizedBox(width: size.width * 0.15),
                    const Text(
                      "Rp. 3.999.000",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(218, 146, 16, 1),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
