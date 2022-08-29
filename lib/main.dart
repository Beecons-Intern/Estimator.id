import 'package:estimator_id/app/utilities/text_styles.dart';
import 'package:flutter/material.dart';

import 'app/screens/paket_screen/components/build_card.dart';
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

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: neutral100,
        title: Text(
          "Paket",
          style: text2(neutral500, regular),
        ),
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: neutral500,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          children: const [
            BuildCard(
              title: "Standart",
              subtitle:
                  "Buat RAB Anda dengan metode terbaru yang lebih cepat dan akurat",
              colorTop: Color(0xFF3EBDFE),
              colorBottom: Color(0xFF33EAFD),
              text: "Buat Proyek",
              backgroundColor: Color(0xFF0AC919),
            ),
            BuildCard(
              title: "Professional",
              subtitle:
                  "Efisiensikan pekerjaan perhitungan RAB Anda dengan berbagai fitur unggulan kami",
              colorTop: Color(0xFF8AF032),
              colorBottom: Color(0xFF92FB6D),
              text: "Upgrade",
              backgroundColor: Color(0xFFE92C24),
            ),
            BuildCard(
              title: "Corporate",
              subtitle:
                  "Maksimalkan kinerja tim estimator di perusahaan Anda dan pilih paket berlanggaan sesuai kebutuhan",
              colorTop: Color(0xFFECD42B),
              colorBottom: Color(0xFFF4E85F),
              text: "Upgrade",
              backgroundColor: Color(0xFF0AC919),
            ),
            BuildCard(
              title: "Enterprice",
              subtitle:
                  "Nikmati kustomisasi aplikasi perhitungan RAB tanpa batasan sesuai identitas perusahaan Anda",
              colorTop: Color(0xFF58D6C9),
              colorBottom: Color(0xFF6BFDC9),
              text: "Buat  Proyek",
              backgroundColor: Color(0xFFE92C24),
            )
          ],
        ),
      ),
    );
  }
}




