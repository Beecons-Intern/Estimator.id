import 'package:flutter/material.dart';
import '../../../route/route_name.dart';
import '../../../../utilities/utilities.dart';
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
            onTap: () {
              showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  context: context,
                  builder: (context) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Buat Proyek Baru",
                            style: text1(neutral500, bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          buildOptionProyek(
                              size,
                              "assets/img/perencanaan.png",
                              "Perencanaan",
                              "Proyek perencanaan berlaku bagi estimator untuk estimasi anggaran proyek",
                              () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, RouteName.perencanaan);
                          }),
                          buildOptionProyek(
                              size,
                              "assets/img/penawaran.png",
                              "Penawaran",
                              "Proyek penawaran berlaku bagi kontraktor untuk penawaran nilai pagu proyek",
                              () {
                            Navigator.pop(context);
                            Navigator.pushNamed(
                                context, RouteName.profileProyek);
                          })
                        ],
                      ),
                    );
                  });
            },
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
              text: "Hubungi Kami",
              backgroundColor: const Color(0xFFE92C24),
              onTap: () {}),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  GestureDetector buildOptionProyek(Size size, String image, String title,
      String subtitle, void Function()? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 16),
        width: size.width,
        decoration: BoxDecoration(
            border: Border.all(color: primary, width: 2),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Row(
          children: [
            Image.asset(
              image,
              width: 80,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: text2(neutral500, semibold),
                ),
                Text(
                  subtitle,
                  style: text4(neutral500, regular),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
