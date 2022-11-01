import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import '../../route/route_name.dart';
import '../../widgets/widgets.dart';
import 'components/body.dart';
import '../../../utilities/utilities.dart';
import '../../view_model/proyek_perencanaan_view_model.dart';
import '../../view_model/template_proyek_view_model.dart';

class EditProyekPerencanaanScreen extends StatelessWidget {
  const EditProyekPerencanaanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final templateProyekViewModel =
        Provider.of<TemplateProyekViewModel>(context, listen: false);
    final proyekPerencanaanViewModel =
        Provider.of<ProyekPerencanaanViewModel>(context);

    Size size = MediaQuery.of(context).size;
    final isTemplate = ModalRoute.of(context)!.settings.arguments as bool;

    Future<String> saveImage(XFile pickedFile) async {
      XFile file = pickedFile;
      final File image = File(file.path);
      final Directory extDir = await getApplicationDocumentsDirectory();
      String dirPath = extDir.path;
      final File newImage = await image.copy("$dirPath/${basename(file.path)}");
      return newImage.path;
    }

    Future<String> saveFile(File value) async {
      final String nameDoc = basename(value.path);
      final Directory extDir = await getApplicationDocumentsDirectory();
      String dirPath = extDir.path;
      final File newFile = await value.copy("$dirPath/$nameDoc");
      return newFile.path;
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
            ontap: () async {
              if (isTemplate == true) {
                if (proyekPerencanaanViewModel.namaProyek != null &&
                    proyekPerencanaanViewModel.namaProyek != "" &&
                    proyekPerencanaanViewModel.idWilayah != null &&
                    proyekPerencanaanViewModel.pemilik != null &&
                    proyekPerencanaanViewModel.pemilik != "" &&
                    proyekPerencanaanViewModel.jasaKontraktor != null &&
                    proyekPerencanaanViewModel.jasaKontraktor != "" &&
                    proyekPerencanaanViewModel.pajak != null &&
                    proyekPerencanaanViewModel.pajak != "") {
                  if (proyekPerencanaanViewModel.newPhoto != null) {
                    await saveImage(proyekPerencanaanViewModel.newPhoto!).then(
                        (value) => proyekPerencanaanViewModel.foto = value);
                  }

                  proyekPerencanaanViewModel
                      .insertDataProyek()
                      .then((value) async {
                    proyekPerencanaanViewModel.insertDataPerencanaan(
                        templateProyekViewModel.datasTemplateKategoriPekerjaan!,
                        templateProyekViewModel.datasTemplateHargaSatuanList!,
                        templateProyekViewModel.datasTemplateAhs!);

                    if (proyekPerencanaanViewModel.datasDokumen != null &&
                        proyekPerencanaanViewModel.datasDokumen!.isNotEmpty) {
                      for (var element
                          in proyekPerencanaanViewModel.datasDokumen!) {
                        final savedFile = await saveFile(element);
                        proyekPerencanaanViewModel.insertDokumen(savedFile,
                            proyekPerencanaanViewModel.dataProyek!.idProyek!);
                      }
                    }

                    proyekPerencanaanViewModel
                        .insertPerencanaan()
                        .then((value) {
                      // proyekViewModel.setDataBaru(
                      //     proyekPerencanaanViewModel.dataPelaksanaProyek!,
                      //     proyekPerencanaanViewModel.dataProyek!);

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
              } else {
                if (proyekPerencanaanViewModel.namaProyek != null &&
                    proyekPerencanaanViewModel.namaProyek != "" &&
                    proyekPerencanaanViewModel.idWilayah != null &&
                    proyekPerencanaanViewModel.pemilik != null &&
                    proyekPerencanaanViewModel.pemilik != "" &&
                    proyekPerencanaanViewModel.jasaKontraktor != null &&
                    proyekPerencanaanViewModel.jasaKontraktor != "" &&
                    proyekPerencanaanViewModel.pajak != null &&
                    proyekPerencanaanViewModel.pajak != "") {
                  if (proyekPerencanaanViewModel.newPhoto != null) {
                    await saveImage(proyekPerencanaanViewModel.newPhoto!).then(
                        (value) => proyekPerencanaanViewModel.foto = value);
                  }

                  proyekPerencanaanViewModel
                      .insertDataProyek()
                      .then((value) async {
                    if (proyekPerencanaanViewModel.datasDokumen != null &&
                        proyekPerencanaanViewModel.datasDokumen!.isNotEmpty) {
                      for (var element
                          in proyekPerencanaanViewModel.datasDokumen!) {
                        final savedFile = await saveFile(element);
                        proyekPerencanaanViewModel.insertDokumen(savedFile,
                            proyekPerencanaanViewModel.dataProyek!.idProyek!);
                      }
                    }

                    proyekPerencanaanViewModel.insertPelaksanaProyek();

                    ScaffoldMessenger.of(context)
                        .showSnackBar(snackbarAlert(size, 1));

                    Navigator.pushNamedAndRemoveUntil(
                        context, RouteName.navigation, (route) => false);
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
        ),
        body: Body(
          proyekPerencanaanViewModel: proyekPerencanaanViewModel,
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
