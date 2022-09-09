import 'package:flutter/cupertino.dart';

import '../../../route/route_name.dart';
import 'build_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(
        children: [
          BuildCard(
            title: "Standart",
            subtitle:
                "Buat RAB Anda dengan metode terbaru yang lebih cepat dan akurat",
            colorTop: const Color(0xFF3EBDFE),
            colorBottom: const Color(0xFF33EAFD),
            text: "Buat Proyek",
            backgroundColor: const Color(0xFF0AC919),
            onTap: () {},
          ),
          BuildCard(
              title: "Professional",
              subtitle:
                  "Efisiensikan pekerjaan perhitungan RAB Anda dengan berbagai fitur unggulan kami",
              colorTop: const Color(0xFF8AF032),
              colorBottom: const Color(0xFF92FB6D),
              text: "Upgrade",
              backgroundColor: const Color(0xFFE92C24),
              onTap: () {
                Navigator.pushNamed(context, RouteName.order);
              }),
          BuildCard(
              title: "Corporate",
              subtitle:
                  "Maksimalkan kinerja tim estimator di perusahaan Anda dan pilih paket berlanggaan sesuai kebutuhan",
              colorTop: const Color(0xFFECD42B),
              colorBottom: const Color(0xFFF4E85F),
              text: "Upgrade",
              backgroundColor: const Color(0xFF0AC919),
              onTap: () {}),
          BuildCard(
              title: "Enterprice",
              subtitle:
                  "Nikmati kustomisasi aplikasi perhitungan RAB tanpa batasan sesuai identitas perusahaan Anda",
              colorTop: const Color(0xFF58D6C9),
              colorBottom: const Color(0xFF6BFDC9),
              text: "Buat  Proyek",
              backgroundColor: const Color(0xFFE92C24),
              onTap: () {})
        ],
      ),
    );
  }
}
