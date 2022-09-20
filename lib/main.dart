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
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: Text(
          "Tambah Pekerjaan",
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
          ontap: () {},
          text: "Tambahkan Item",
        ),
      ),
    );
  }
}
