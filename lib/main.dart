import 'package:estimator_id/app/screens/koleksi_screen/koleksi_screen.dart';
import 'package:estimator_id/app/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'app/utilities/colors.dart';
import 'app/utilities/text_styles.dart';
import 'app/widgets/build_textfields.dart';

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
      home: const KoleksiScreen(),
      // routes: AppPage.pages,
      // initialRoute: '/',
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
    return Scaffold();
  }
}
