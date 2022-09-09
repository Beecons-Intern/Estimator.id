import 'package:estimator_id/app/screens/rab_screen/components/build_penawaran.dart';
import 'package:estimator_id/app/screens/rab_screen/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class penawaranScreen extends StatefulWidget {
  const penawaranScreen({Key? key}) : super(key: key);

  @override
  State<penawaranScreen> createState() => _penawaranScreenState();
}

class _penawaranScreenState extends State<penawaranScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomThem.lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Estimator Anggaran",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: buildPenawaran(),
      ),
    );
  }
}
