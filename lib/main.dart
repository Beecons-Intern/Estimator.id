import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'presentation/route/page_route.dart';
import 'presentation/screens/navigation/navigation.dart';
import 'presentation/screens/onboarding_screen/onboarding_screen.dart';
import 'presentation/view_model/ahs_utama_view_model.dart';
import 'presentation/view_model/alat_utama_view_model.dart';
import 'presentation/view_model/auth_view_model.dart';
import 'presentation/view_model/bahan_utama_view_model.dart';
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
import 'presentation/view_model/upah_utama_view_model.dart';
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
        ChangeNotifierProvider(create: (context) => AuthViewModel()),
        ChangeNotifierProvider(create: (context) => WilayahViewModel()),
        ChangeNotifierProvider(create: (context) => TemplateProyekViewModel()),
        ChangeNotifierProvider(create: (context) => AHSUtamaViewModel()),
        ChangeNotifierProvider(create: (context) => BahanUtamaViewModel()),
        ChangeNotifierProvider(create: (context) => AlatUtamaViewModel()),
        ChangeNotifierProvider(create: (context) => UpahUtamaViewModel()),
        ChangeNotifierProvider(create: (context) => ProfileProyekViewModel()),
        ChangeNotifierProxyProvider<AuthViewModel, PenggunaViewModel>(
          create: (context) => PenggunaViewModel(),
          update: (context, pengguna, detail) =>
              detail!..setUser(pengguna.userId),
        ),
        ChangeNotifierProxyProvider<AuthViewModel, DetailProyekViewModel>(
          create: (context) => DetailProyekViewModel(),
          update: (context, pengguna, detail) =>
              detail!..updateData(pengguna.userId),
        ),
        ChangeNotifierProxyProvider<AuthViewModel,
            ProyekPerencanaanViewModel>(
          create: (context) => ProyekPerencanaanViewModel(),
          update: (context, pengguna, perencanaan) =>
              perencanaan!..updateData(pengguna.userId),
        ),
        ChangeNotifierProxyProvider<AuthViewModel,
            PelaksanaProyekViewModel>(
          create: (context) => PelaksanaProyekViewModel(),
          update: (context, pengguna, pelaksana) =>
              pelaksana!..updateData(pengguna.userId),
        ),
        ChangeNotifierProxyProvider<AuthViewModel,
            PengalamanProyekViewModel>(
          create: (context) => PengalamanProyekViewModel(),
          update: (context, pengguna, pengalaman) =>
              pengalaman!..updateData(pengguna.userId),
        ),
        ChangeNotifierProxyProvider<AuthViewModel, KompetensiViewModel>(
            create: (context) => KompetensiViewModel(),
            update: (context, pengguna, kompetensi) =>
                kompetensi!..updateData(pengguna.userId)),
        ChangeNotifierProxyProvider<AuthViewModel, ProyekViewModel>(
            create: (context) => ProyekViewModel(),
            update: (context, pengguna, proyek) =>
                proyek!..updateData(pengguna.userId)),
        ChangeNotifierProxyProvider<AuthViewModel, KesalahanViewModel>(
            create: (context) => KesalahanViewModel(),
            update: (context, pengguna, kesalahan) =>
                kesalahan!..updateData(pengguna.userId)),
        ChangeNotifierProxyProvider<AuthViewModel, RatingPenggunaViewModel>(
            create: (context) => RatingPenggunaViewModel(),
            update: (context, pengguna, ratingPengguna) =>
                ratingPengguna!..updateData(pengguna.userId)),
      ],
      builder: (context, child) => Consumer<AuthViewModel>(
          builder: (context, auth, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Estimator.id',
              theme: ThemeData(fontFamily: 'Quicksand'),
              routes: AppPage.pages,
              home: auth.isAuth
                  ? const Navigation()
                  : FutureBuilder(
                      future: auth.autoLogin(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Scaffold(
                            body: Center(
                              child: CircularProgressIndicator(),
                            ),
                          );
                        }

                        return const OnBoardingScreen();
                      }))),
    );
  }
}
