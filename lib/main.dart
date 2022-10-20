import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'presentation/route/page_route.dart';
import 'presentation/view_model/detail_proyek_view_model.dart';
import 'presentation/view_model/kesalahan_view_model.dart';
import 'presentation/view_model/kompetensi_view_model.dart';
import 'presentation/view_model/pelaksana_proyek_view_model.dart';
import 'presentation/view_model/pengalaman_proyek_view_model.dart';
import 'presentation/view_model/pengguna_view_model.dart';
import 'presentation/view_model/profile_proyek_view_model.dart';
import 'presentation/view_model/proyek_perencanaan_view_model.dart';
import 'presentation/view_model/proyek_view_model.dart';
import 'presentation/view_model/rating_pengguna_view_model.dart';
import 'presentation/view_model/template_proyek_view_model.dart';
import 'presentation/view_model/wilayah_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PenggunaViewModel()),
        ChangeNotifierProvider(create: (context) => WilayahViewModel()),
        ChangeNotifierProvider(create: (context) => TemplateProyekViewModel()),
        ChangeNotifierProxyProvider<PenggunaViewModel, DetailProyekViewModel>(
          create: (context) => DetailProyekViewModel(),
          update: (context, pengguna, detail) =>
              detail!..updateData(pengguna.idPengguna),
        ),
        ChangeNotifierProxyProvider<PenggunaViewModel,
            ProyekPerencanaanViewModel>(
          create: (context) => ProyekPerencanaanViewModel(),
          update: (context, pengguna, perencanaan) =>
              perencanaan!..updateData(pengguna.idPengguna),
        ),
        ChangeNotifierProxyProvider<PenggunaViewModel,
            PelaksanaProyekViewModel>(
          create: (context) => PelaksanaProyekViewModel(),
          update: (context, pengguna, pelaksana) =>
              pelaksana!..updateData(pengguna.idPengguna),
        ),
        ChangeNotifierProxyProvider<PenggunaViewModel, ProfileProyekViewModel>(
          create: (context) => ProfileProyekViewModel(),
          update: (context, pengguna, profile) =>
              profile!..updateData(pengguna.idPengguna),
        ),
        ChangeNotifierProxyProvider<PenggunaViewModel,
            PengalamanProyekViewModel>(
          create: (context) => PengalamanProyekViewModel(),
          update: (context, pengguna, pengalaman) =>
              pengalaman!..updateData(pengguna.idPengguna),
        ),
        ChangeNotifierProxyProvider<PenggunaViewModel, KompetensiViewModel>(
            create: (context) => KompetensiViewModel(),
            update: (context, pengguna, kompetensi) =>
                kompetensi!..updateData(pengguna.idPengguna)),
        ChangeNotifierProxyProvider<PenggunaViewModel, ProyekViewModel>(
            create: (context) => ProyekViewModel(),
            update: (context, pengguna, proyek) =>
                proyek!..updateData(pengguna.idPengguna)),
        ChangeNotifierProxyProvider<PenggunaViewModel, KesalahanViewModel>(
            create: (context) => KesalahanViewModel(),
            update: (context, pengguna, kesalahan) =>
                kesalahan!..updateData(pengguna.idPengguna)),
        ChangeNotifierProxyProvider<PenggunaViewModel, RatingPenggunaViewModel>(
            create: (context) => RatingPenggunaViewModel(),
            update: (context, pengguna, ratingPengguna) =>
                ratingPengguna!..updateData(pengguna.idPengguna)),
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Estimator',
        theme: ThemeData(fontFamily: 'Quicksand'),
        routes: AppPage.pages,
        initialRoute: '/',
        // home: MyHomePage(),
      ),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: primary,
//         title: Text(
//           "Detail Bahan",
//           style: text1(neutral100, bold),
//         ),
//         leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: const Icon(
//               Icons.arrow_back_ios_new_rounded,
//               color: neutral100,
//             )),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           Image.asset(
//             "assets/img/led.jpg",
//             height: size.height * 0.35,
//             width: size.width,
//           ),
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.only(
//                   top: 40, left: size.width * 0.05, right: size.width * 0.05),
//               decoration: const BoxDecoration(
//                 color: accentGreen100,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(30),
//                   topRight: Radius.circular(30),
//                 ),
//               ),
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "LED-E1-P45-E27-3W-3000K-CT-V7",
//                       style: text2(neutral500, bold),
//                     ),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     Container(
//                       padding: const EdgeInsets.all(5),
//                       decoration: const BoxDecoration(
//                         color: primary,
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(10),
//                           topRight: Radius.circular(10),
//                         ),
//                       ),
//                       child: Text(
//                         "Opple",
//                         style: text3(neutral100, regular),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 8,
//                     ),
//                     const DottedLine(
//                       dashColor: neutral300,
//                     ),
//                     const SizedBox(
//                       height: 8,
//                     ),
//                     Text.rich(TextSpan(
//                         text: "Rp24.000,00",
//                         style: text2(accentOrange500, bold),
//                         children: [
//                           TextSpan(
//                               text: " / buah", style: text4(neutral500, light))
//                         ])),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     Row(
//                       children: [
//                         const Icon(
//                           Icons.location_pin,
//                           color: primary,
//                           size: 16,
//                         ),
//                         Text(
//                           "Kab Aceh Selatan",
//                           style: text4(primary, regular),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 16,
//                     ),
//                     Text(
//                       "LED Blub EcoMax",
//                       style: text4(neutral500, regular),
//                     ),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     Text(
//                       "LED-P-HPB-E40-90W-4000K-70D-CT",
//                       style: text4(neutral500, regular),
//                     ),
//                     const SizedBox(
//                       height: 8,
//                     ),
//                     const DottedLine(
//                       dashColor: neutral300,
//                     ),
//                     const SizedBox(
//                       height: 8,
//                     ),
//                     Text(
//                       "PT Opple Lighting Indonesia",
//                       style: text4(neutral500, regular),
//                     ),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     Text(
//                       "Opple merupakan perusahaan lighting multinational terbesar di China yang memiliki fasilitas pabrikasi terbesar di China dan sudah beroperasi di 70 negara.",
//                       textAlign: TextAlign.justify,
//                       style: text4(neutral500, regular),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
