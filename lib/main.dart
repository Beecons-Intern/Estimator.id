import 'package:dotted_border/dotted_border.dart';
import 'package:estimator_id/app/screens/rab_screen/rab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'app/route/page_route.dart';
import 'app/screens/copy_dan_duplikat_pekerjaan/component/card_expanded_tile.dart';
import 'app/screens/proyek/component/item_anggaran_belanja.dart';
import 'app/screens/proyek/component/item_profil_project.dart';
import 'app/screens/proyek/component/tim_proyek.dart';
import 'app/screens/proyek/component/total_anggaran_belanja.dart';
import 'app/screens/proyek/duplikat.dart';
import 'app/screens/proyek/menu_proyek.dart';
import 'app/screens/proyek/popup_bagikan.dart';
import 'app/screens/proyek/upgrade.dart';
import 'app/utilities/colors.dart';
import 'app/utilities/text_styles.dart';
import 'app/widgets/rounded_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Estimator',
      theme: ThemeData(fontFamily: 'Quicksand'),
      routes: AppPage.pages,
      initialRoute: '/',
      // home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = [
    "Pekerjaan Persiapan",
    "Pekerjaan Struktural",
    "Pekerjaan Arsitektural",
    "Pekerjaan MEP"
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primary,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: neutral100,
              )),
          title: Text(
            "Kategori Pekerjaan",
            style: text1(neutral100, bold),
          ),
          centerTitle: true,
        ),
        bottomSheet: Container(
          padding:
              EdgeInsets.symmetric(horizontal: size.width * 0.05, vertical: 12),
          width: size.width,
          height: size.height * 0.09,
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            boxShadow: [
              BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 2,
                  color: Colors.black.withOpacity(0.2),
                  offset: const Offset(0, 1)),
            ],
          ),
          child: RoundedButton(
            ontap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Kategori baru",
                        style: text3(neutral500, regular),
                      ),
                      FormBuilderTextField(
                        style: text3(neutral500, regular),
                        name: "nama_kategori",
                        cursorColor: primary,
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding:
                              const EdgeInsets.fromLTRB(0, 10, 12, 5),
                          hintText: "nama kategori",
                          hintStyle: text3(neutral200, regular),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: primary, width: 2),
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(width: 2, color: neutral200),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      RoundedButton(
                        ontap: () {},
                        text: "Simpan",
                      )
                    ],
                  ),
                ),
              );
            },
            text: "Tambah Kategori",
          ),
        ),
        body: SingleChildScrollView(
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
          // Column(
          //   children: [
          //     GestureDetector(
          //       onTap: () => showDialog(
          //         context: context,
          //         builder: (BuildContext context) => AlertDialog(
          //           title: Align(
          //             alignment: Alignment.topRight,
          //             child: GestureDetector(
          //               onTap: () => Navigator.pop(context),
          //               child: const Icon(Icons.cancel),
          //             ),
          //           ),
          //           content: Column(
          //             mainAxisSize: MainAxisSize.min,
          //             children: [
          //               Container(
          //                 width: size.width,
          //                 color: const Color(0XFFBDDFC1),
          //                 padding: const EdgeInsets.all(10),
          //                 margin: const EdgeInsets.symmetric(vertical: 10),
          //                 alignment: Alignment.center,
          //                 child: const Text(
          //                   "Tambah Kategori",
          //                   style: TextStyle(fontSize: 12, color: Colors.black),
          //                 ),
          //               ),
          //               Container(
          //                 padding: const EdgeInsets.all(5),
          //                 decoration: BoxDecoration(
          //                     border: Border.all(
          //                       color: const Color(0XFFBDDFC1),
          //                     ),
          //                     borderRadius: BorderRadius.circular(5)),
          //                 child: TextField(
          //                   onTap: () {},
          //                   decoration: const InputDecoration(
          //                       hintText: 'masukan nama pekerjaan',
          //                       suffixIcon: Icon(Icons.person),
          //                       border: InputBorder.none),
          //                 ),
          //               ),
          //             ],
          //           ),
          //           actions: [
          //             Container(
          //               decoration: BoxDecoration(
          //                   color: const Color(0XFF089E14),
          //                   borderRadius: BorderRadius.circular(5)),
          //               alignment: Alignment.center,
          //               padding: const EdgeInsets.all(10),
          //               child: const Text(
          //                 "Simpan",
          //                 style: TextStyle(
          //                   color: Colors.white,
          //                   fontSize: 14,
          //                 ),
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //       child: Container(
          //         padding: const EdgeInsets.all(10),
          //         margin: const EdgeInsets.all(10),
          //         decoration: BoxDecoration(
          //             color: const Color(0XFF089E14),
          //             borderRadius: BorderRadius.circular(5)),
          //         child: const Center(
          //           child: Text(
          //             "Tambah Kategori",
          //             style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 12,
          //                 fontWeight: FontWeight.bold),
          //           ),
          //         ),
          //       ),
          //     )
          //   ],
          // ),
        ));
  }
}
