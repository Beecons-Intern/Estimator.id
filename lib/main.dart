import 'package:estimator_id/app/screens/Laporan%20RAB/laporan_rab.dart';
import 'package:estimator_id/app/screens/copy_dan_duplikat_pekerjaan/sub_copy_pekerjaan.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estimator',
      theme: ThemeData(fontFamily: 'Quicksand'),
      home: SubCopyPekerjaan(),
    );
  }
}
