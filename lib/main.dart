import 'package:estimator_id/app/screens/Tambah%20Pekerjaan/tambah_pekerjaan.dart';
import 'package:estimator_id/app/screens/buat%20proyek/form_proyek_baru.dart';

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
      home: TambahPekerjaan(),
    );
  }
}
