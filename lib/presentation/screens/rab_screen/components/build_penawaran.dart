import 'package:flutter/material.dart';

class BuildPenawaran extends StatefulWidget {
  const BuildPenawaran({Key? key}) : super(key: key);

  @override
  State<BuildPenawaran> createState() => _BuildPenawaranState();
}

class _BuildPenawaranState extends State<BuildPenawaran> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            onTap: () {},
            decoration: const InputDecoration(
              suffixIcon: Icon(
                Icons.search,
                color: Color(0xFF969696),
                size: 25,
              ),
              hintText: 'Masukkan kata kunci',
              isDense: true,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                label: const Text('atur kategori'),
                icon: const Icon(Icons.edit_note_outlined),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                label: const Text('impor penawaran'),
                icon: const Icon(Icons.drive_folder_upload_outlined),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          //kudune gowo listview

          Expanded(
            child: Stack(
              children: [
                ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Uraian Pekerjaan',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.add_circle_outline)),
                            // SizedBox(
                            //   width: 5,
                            // ),
                            GestureDetector(
                                onTap: () {}, child: const Icon(Icons.delete)),
                            GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.expand_more,
                                // size: 30,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Harga',
                                style: TextStyle(
                                  fontSize: 15,
                                  wordSpacing: 3,
                                  color: Color(0xFF5DC941),
                                ),
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF5DC941),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                '%',
                                style: TextStyle(
                                  fontSize: 15,
                                  wordSpacing: 3,
                                  color: Color(0xFFDA9210),
                                ),
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFDA9210),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      indent: 2,
                      color: Color(0xFFB1B1B1),
                    ),

                    ///anyar
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Uraian Pekerjaan',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.add_circle_outline)),
                            // SizedBox(
                            //   width: 5,
                            // ),
                            GestureDetector(
                                onTap: () {}, child: const Icon(Icons.delete)),
                            GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.expand_more,
                                // size: 30,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Harga',
                                style: TextStyle(
                                  fontSize: 15,
                                  wordSpacing: 3,
                                  color: Color(0xFF5DC941),
                                ),
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF5DC941),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                '%',
                                style: TextStyle(
                                  fontSize: 15,
                                  wordSpacing: 3,
                                  color: Color(0xFFDA9210),
                                ),
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFDA9210),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      indent: 2,
                      color: Color(0xFFB1B1B1),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Uraian Pekerjaan',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.add_circle_outline)),
                            // SizedBox(
                            //   width: 5,
                            // ),
                            GestureDetector(
                                onTap: () {}, child: const Icon(Icons.delete)),
                            GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.expand_more,
                                // size: 30,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Harga',
                                style: TextStyle(
                                  fontSize: 15,
                                  wordSpacing: 3,
                                  color: Color(0xFF5DC941),
                                ),
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF5DC941),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                '%',
                                style: TextStyle(
                                  fontSize: 15,
                                  wordSpacing: 3,
                                  color: Color(0xFFDA9210),
                                ),
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFDA9210),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      indent: 2,
                      color: Color(0xFFB1B1B1),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Uraian Pekerjaan',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.add_circle_outline)),
                            // SizedBox(
                            //   width: 5,
                            // ),
                            GestureDetector(
                                onTap: () {}, child: const Icon(Icons.delete)),
                            GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.expand_more,
                                // size: 30,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Harga',
                                style: TextStyle(
                                  fontSize: 15,
                                  wordSpacing: 3,
                                  color: Color(0xFF5DC941),
                                ),
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF5DC941),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                '%',
                                style: TextStyle(
                                  fontSize: 15,
                                  wordSpacing: 3,
                                  color: Color(0xFFDA9210),
                                ),
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFDA9210),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      indent: 2,
                      color: Color(0xFFB1B1B1),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Uraian Pekerjaan',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.add_circle_outline)),
                            // SizedBox(
                            //   width: 5,
                            // ),
                            GestureDetector(
                                onTap: () {}, child: const Icon(Icons.delete)),
                            GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.expand_more,
                                // size: 30,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Harga',
                                style: TextStyle(
                                  fontSize: 15,
                                  wordSpacing: 3,
                                  color: Color(0xFF5DC941),
                                ),
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF5DC941),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                '%',
                                style: TextStyle(
                                  fontSize: 15,
                                  wordSpacing: 3,
                                  color: Color(0xFFDA9210),
                                ),
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFDA9210),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      indent: 2,
                      color: Color(0xFFB1B1B1),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              child: Container(
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(255, 149, 232, 152),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Expanded(child: Text("JUMLAH HARGA")),
                    Expanded(child: Center(child: Text("Rp. -"))),
                    Expanded(child: Center(child: Text("100.00%"))),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Expanded(child: Text("PPN 11.00%")),
                    Expanded(child: Center(child: Text("Rp. -"))),
                    Expanded(child: Center(child: Text(""))),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Expanded(child: Text("TOTAL HARGA")),
                    Expanded(child: Center(child: Text("Rp. -"))),
                    Expanded(child: Center(child: Text(""))),
                  ],
                ),
              ],
            ),
          )),

          // SizedBox(
          //   height: 200,
          // ),

          Positioned(
            bottom: 2,
            child: SizedBox(
              // height: 20,
              child: ElevatedButton(
                onPressed: () {},
                child: const SizedBox(
                  width: 340,
                  child: Text(
                    'Lihat Laporan',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
