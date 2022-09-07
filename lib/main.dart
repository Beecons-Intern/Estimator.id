import 'package:dotted_line/dotted_line.dart';
import 'package:estimator_id/app/screens/tukar_akun_transaksi_sukses_screen/tukar_akun_transaksi_sukses_screen.dart';
import 'package:estimator_id/app/screens/tukar_listrik_sukses_screen/tukar_listrik_sukses_screen.dart';
import 'package:estimator_id/app/utilities/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'app/screens/home_screen/home_screen.dart';
import 'app/screens/onboarding_screen/onboarding_screen.dart';
import 'app/screens/poin_screen/poin_screen.dart';
import 'app/screens/token_listrik_screen/token_listrik_screen.dart';
import 'app/screens/tukar_akun_premium_screen/tukar_akun_premium_screen.dart';
import 'app/utilities/colors.dart';
import 'app/widgets/rounded_button.dart';

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
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: GridView.builder(
          itemCount: 50,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) => buildImageCard(index)),
    );
  }

  Widget buildImageCard(int index) => Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          margin: const EdgeInsets.all(8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://source.unsplash.com/random?sig=$index',
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
}
