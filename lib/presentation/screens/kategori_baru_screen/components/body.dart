import 'package:flutter/material.dart';
import '../../../../utilities/utilities.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      "Pekerjaan Persiapan",
      "Pekerjaan Struktural",
      "Pekerjaan Arsitektural",
      "Pekerjaan MEP"
    ];
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          ListView.builder(
            itemCount: items.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: index % 2 == 0 ? accentGreen100 : null,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    items[index],
                    style: text3(neutral500, regular),
                  ),
                  GestureDetector(
                    onTap: () => showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            RichText(
                                text: TextSpan(
                              text: "HAPUS",
                              style: text3(neutral500, bold),
                              children: [
                                TextSpan(
                                  text: " ${items[index]}",
                                  style: text3(neutral500, regular),
                                )
                              ],
                            )),
                            const SizedBox(
                              height: 10,
                            ),
                            RichText(
                                text: TextSpan(
                              text:
                                  "Yakin anda akan menghapus kategori pekerjaan",
                              style: text3(neutral500, regular),
                              children: [
                                TextSpan(
                                  text: " ${items[index]}?",
                                  style: text3(neutral500, bold),
                                )
                              ],
                            )),
                            const SizedBox(
                              height: 10,
                            ),
                            RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  text: "Peringatan!",
                                  style: text3(accentOrange500, light),
                                  children: [
                                    TextSpan(
                                      text:
                                          " semua rincian yang berkaitan dengan kategori pekerjaan tersebut akan ikut terhapus",
                                      style: text3(neutral500, light),
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: primary,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Hapus",
                        style: text3(neutral100, bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
