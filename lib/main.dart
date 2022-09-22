import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:estimator_id/app/screens/rab_screen/rab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'app/route/page_route.dart';
import 'app/screens/AHS/Component/item_menu_list.dart';
import 'app/screens/Laporan RAB/laporan_rab.dart';
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
      // routes: AppPage.pages,
      // initialRoute: '/',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: Text(
          "Tambah Bahan",
          style: text1(neutral100, bold),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: neutral100,
            )),
        centerTitle: true,
      ),
      body: GridView.builder(
          padding: EdgeInsets.only(
              top: 16,
              left: size.width * 0.05,
              right: size.width * 0.05,
              bottom: 20),
          itemCount: 10,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.52,
              crossAxisSpacing: 10,
              mainAxisSpacing: 16,
              crossAxisCount: 2),
          itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                  color: neutral100,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 2,
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, 1)),
                  ],
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/img/led.jpg",
                          width: size.width,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "LED-E1-P45-E27-3W-3000K-CT-V7",
                          style: text3(neutral500, regular),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "PT Opple Lighting Indonesia",
                          style: text4(primary, regular),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const DottedLine(
                          dashColor: neutral200,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                              color: primary800,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          child: Text(
                            "Opple",
                            style: text4(neutral100, regular),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RichText(
                            text: TextSpan(
                                text: "Rp 24.000,00",
                                style: text3(accentOrange500, medium),
                                children: [
                              TextSpan(
                                  text: " / buah",
                                  style: text4(neutral500, light))
                            ])),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: primary,
                              size: 14,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Kab Sleman",
                              style: text4(primary, regular),
                            )
                          ],
                        )
                      ],
                    ),
                    Positioned(
                        top: 5,
                        right: 5,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                border: Border.all(color: primary),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8))),
                            child: Text(
                              "Pilih",
                              style: text4(primary, bold),
                            ),
                          ),
                        ))
                  ],
                ),
              )),
    );
  }
}
