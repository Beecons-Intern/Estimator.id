import 'package:estimator_id/app/screens/rab_screen/rab.dart';
import 'package:flutter/material.dart';
import 'app/route/page_route.dart';
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

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: Text(
          "Penawaran",
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // height: size.height,
              child: TextField(
                onTap: () {},
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF969696),
                    size: 25,
                  ),
                  hintText: 'Masukkan kata kunci',
                  isDense: true,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  label: Text('atur kategori'),
                  icon: Icon(Icons.edit_note_outlined),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: Text('impor penawaran'),
                  icon: Icon(Icons.drive_folder_upload_outlined),
                ),
              ],
            ),
            SizedBox(
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
                          Text(
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
                                  child: Icon(Icons.add_circle_outline)),
                              // SizedBox(
                              //   width: 5,
                              // ),
                              GestureDetector(
                                  onTap: () {}, child: Icon(Icons.delete)),
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
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
                          Container(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                          Container(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                      Divider(
                        thickness: 1,
                        indent: 2,
                        color: Color(0xFFB1B1B1),
                      ),

                      ///anyar
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
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
                                  child: Icon(Icons.add_circle_outline)),
                              // SizedBox(
                              //   width: 5,
                              // ),
                              GestureDetector(
                                  onTap: () {}, child: Icon(Icons.delete)),
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
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
                          Container(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                          Container(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                      Divider(
                        thickness: 1,
                        indent: 2,
                        color: Color(0xFFB1B1B1),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
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
                                  child: Icon(Icons.add_circle_outline)),
                              // SizedBox(
                              //   width: 5,
                              // ),
                              GestureDetector(
                                  onTap: () {}, child: Icon(Icons.delete)),
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
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
                          Container(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                          Container(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                      Divider(
                        thickness: 1,
                        indent: 2,
                        color: Color(0xFFB1B1B1),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
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
                                  child: Icon(Icons.add_circle_outline)),
                              // SizedBox(
                              //   width: 5,
                              // ),
                              GestureDetector(
                                  onTap: () {}, child: Icon(Icons.delete)),
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
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
                          Container(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                          Container(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                      Divider(
                        thickness: 1,
                        indent: 2,
                        color: Color(0xFFB1B1B1),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
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
                                  child: Icon(Icons.add_circle_outline)),
                              // SizedBox(
                              //   width: 5,
                              // ),
                              GestureDetector(
                                  onTap: () {}, child: Icon(Icons.delete)),
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
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
                          Container(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                          Container(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                      Divider(
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
              padding: EdgeInsets.all(8),
              color: Color.fromARGB(255, 149, 232, 152),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Text("JUMLAH HARGA")),
                      Expanded(child: Center(child: Text("Rp. -"))),
                      Expanded(child: Center(child: Text("100.00%"))),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Text("PPN 11.00%")),
                      Expanded(child: Center(child: Text("Rp. -"))),
                      Expanded(child: Center(child: Text(""))),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                  child: Container(
                    child: Text(
                      'Lihat Laporan',
                      textAlign: TextAlign.center,
                    ),
                    width: 340,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
