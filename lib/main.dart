import 'package:dotted_line/dotted_line.dart';
import 'package:estimator_id/app/utilities/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'app/screens/onboarding_screen/onboarding_screen.dart';
import 'app/utilities/colors.dart';

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
      home: const MyHomePage(),
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
          title: Text(
            "Diskon Akun Premium",
            style: text1(neutral500, bold),
          ),
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: neutral500,
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [],
          ),
        ));
  }
}
