import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../../../utilities/utilities.dart';
import '../../view_model/rating_pengguna_view_model.dart';
import '../../widgets/widgets.dart';
import 'components/body.dart';

class UlasanScreen extends StatelessWidget {
  const UlasanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ratingPenggunaViewModel =
        Provider.of<RatingPenggunaViewModel>(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: primary,
        title: Text(
          "Umpan Balik",
          style: text1(neutral100, bold),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: neutral100,
            )),
        centerTitle: true,
      ),
      bottomSheet: Container(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05, vertical: size.height * 0.015),
          width: size.width,
          height: size.height * 0.09,
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            boxShadow: [
              BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 2,
                  color: Colors.black.withOpacity(0.2),
                  offset: const Offset(0, 1)),
            ],
          ),
          child: RoundedButton(
            ontap: () {
              if (ratingPenggunaViewModel.dataRatingPengguna != null &&
                  ratingPenggunaViewModel.dataRatingPengguna!.idRating !=
                      null) {
                ratingPenggunaViewModel.updateRating().then((value) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(snackbarAlert(size, value));
                });
              } else {
                ratingPenggunaViewModel.insertRating().then((value) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(snackbarAlert(size, value));
                });
              }
            },
            text: "Kirim Umpan Balik",
          )),
      body: Body(ratingPenggunaViewModel: ratingPenggunaViewModel),
    );
  }

  SnackBar snackbarAlert(Size size, bool condition) {
    late String message;
    late String icon;

    switch (condition) {
      case true:
        message = "Ulasan berhasil disimpan!";
        icon = "assets/lotie/success_primary.json";
        break;
      case false:
        message = "Ulasan gagal disimpan, pastikan ulasan diisi lengkap!";
        icon = "assets/lotie/error.json";
        break;
      default:
    }

    return SnackBar(
        duration: const Duration(seconds: 2),
        margin: EdgeInsets.only(
            bottom: size.height * 0.5,
            left: size.width * 0.2,
            right: size.width * 0.2),
        backgroundColor: neutral100,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        behavior: SnackBarBehavior.floating,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            LottieBuilder.asset(icon, width: 80, height: 80),
            Text(message,
                style: text3(neutral500, regular), textAlign: TextAlign.center),
          ],
        ));
  }
}
