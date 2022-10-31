import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import '../../../utilities/strings.dart';
import '../../route/route_name.dart';
import '../../view_model/detail_proyek_view_model.dart';
import '../../view_model/profile_proyek_view_model.dart';
import '../../view_model/proyek_perencanaan_view_model.dart';
import '../../view_model/proyek_view_model.dart';
import '../../view_model/template_proyek_view_model.dart';
import '../../widgets/widgets.dart';
import '../../../../utilities/utilities.dart';
import 'components/body.dart';

class ProfileProyekScreen extends StatelessWidget {
  const ProfileProyekScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final templateProyekViewModel =
        Provider.of<TemplateProyekViewModel>(context, listen: false);
    final proyekPerencanaanViewModel =
        Provider.of<ProyekPerencanaanViewModel>(context);
    final profileProyekViewModel = Provider.of<ProfileProyekViewModel>(context);
    final detailProyekViewModel =
        Provider.of<DetailProyekViewModel>(context, listen: false);
    final proyekViewModel = Provider.of<ProyekViewModel>(context);
    final isNew = ModalRoute.of(context)!.settings.arguments as bool;
    Size size = MediaQuery.of(context).size;

    isNew ? profileProyekViewModel.pemilik = "Estimator.id" : "";

    Future<String> saveImage(XFile pickedFile) async {
      XFile file = pickedFile;
      final File image = File(file.path);
      final Directory extDir = await getApplicationDocumentsDirectory();
      String dirPath = extDir.path;
      final File newImage = await image.copy("$dirPath/${basename(file.path)}");
      return newImage.path;
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: primary,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: neutral100,
              )),
          title: Text(
            "Profil Proyek",
            style: text1(neutral100, bold),
          ),
          centerTitle: true,
        ),
        bottomSheet: isNew == true ? Container(
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
            ontap: () async {
              if (isNew == true) {
                if (profileProyekViewModel.namaProyek != null &&
                    profileProyekViewModel.namaProyek != "" &&
                    profileProyekViewModel.idWilayah != null &&
                    profileProyekViewModel.pemilik != null &&
                    profileProyekViewModel.pemilik != "" &&
                    profileProyekViewModel.jasaKontraktor != null &&
                    profileProyekViewModel.jasaKontraktor != "" &&
                    profileProyekViewModel.pajak != null &&
                    profileProyekViewModel.pajak != "") {
                  if (profileProyekViewModel.newPhoto != null) {
                    await saveImage(profileProyekViewModel.newPhoto!)
                        .then((value) => profileProyekViewModel.foto = value);
                  }

                  profileProyekViewModel.insertDataProyek().then((value) {
                    proyekPerencanaanViewModel.setDataProyek(
                        profileProyekViewModel.dataProyek!,
                        templateProyekViewModel.datasTemplateKategoriPekerjaan!,
                        templateProyekViewModel.datasTemplateHargaSatuanList!,
                        templateProyekViewModel.datasTemplateAhs!);

                    proyekPerencanaanViewModel.insertPerencanaa().then((value) {
                      // detailProyekViewModel.setDataDetaikProyek(
                      //     proyekPerencanaanViewModel.dataProyek!,
                      //     proyekPerencanaanViewModel.dataPelaksanaProyek!,
                      //     proyekPerencanaanViewModel
                      //         .datasKategoriPekerjaan!,
                      //     proyekPerencanaanViewModel.datasHargaSatuan!,
                      //     proyekPerencanaanViewModel.datasAHS!);

                      proyekViewModel.setDataBaru(
                          proyekPerencanaanViewModel.dataPelaksanaProyek!,
                          proyekPerencanaanViewModel.dataProyek!);

                      ScaffoldMessenger.of(context)
                          .showSnackBar(snackbarAlert(size, 1));

                      Navigator.pushNamedAndRemoveUntil(
                          context, RouteName.navigation, (route) => false);
                    });
                  });
                } else {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(snackbarAlert(size, 2));
                  return;
                }
              }
            },
            text: "Simpan",
          ),
        ) : null,
        body: Body(
          isNew: isNew,
          profileProyekViewModel: profileProyekViewModel,
        ));
  }

  SnackBar snackbarAlert(Size size, int condition) {
    late String message;
    late String image;

    switch (condition) {
      case 1:
        message = "Data berhasil disimpan!";
        image = "assets/lotie/success_primary.json";
        break;
      case 2:
        message = "Input yang anda masukkan tidak lengkap!";
        image = "assets/lotie/error.json";
        break;
      default:
    }

    return SnackBar(
        duration: const Duration(seconds: 1),
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
            LottieBuilder.asset(image, width: 80, height: 80),
            Text(message,
                style: text3(neutral500, regular), textAlign: TextAlign.center),
          ],
        ));
  }
}
