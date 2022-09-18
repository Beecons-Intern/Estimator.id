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


