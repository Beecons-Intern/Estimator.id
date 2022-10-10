import 'dart:io';
import 'package:estimator_id/data/model/pengguna_model.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import '../../../../utilities/utilities.dart';
import '../../../view_model/pengguna_view_model.dart';
import '../../../widgets/rounded_button.dart';
import 'build_bottom_sheet_wilayah.dart';
import 'build_text_field.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormBuilderState>();
  File? file;
  Future selectImage() async {
    final result = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowedExtensions: ['jpg', 'png']);
    if (result == null) return;

    PlatformFile pickedFile = result.files.first;
    setState(() {
      file = File(pickedFile.path!);
    });
  }

  @override
  Widget build(BuildContext context) {
    final penggunaViewModel = Provider.of<PenggunaViewModel>(context);
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 28,
          ),
          Center(
            child: Stack(
              children: [
                Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    border: Border.all(width: 4, color: primary),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0, 1)),
                    ],
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: file != null
                            ? FileImage(file!) as ImageProvider
                            : const AssetImage("assets/img/profil.jpg")),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () async {
                        await selectImage();
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 4,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor),
                            color: primary),
                        child: const Icon(
                          Icons.camera_alt_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 36,
          ),
          FormBuilder(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildTextField(
                  title: "Nama Lengkap",
                  name: "namaPengguna",
                  isRequired: true,
                  initialValue: penggunaViewModel.dataPengguna != null
                      ? penggunaViewModel.dataPengguna!.namaPengguna
                      : "",
                  capitalization: TextCapitalization.words,
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(
                  height: 16,
                ),
                BuildTextField(
                  title: "Username",
                  name: "username",
                  isRequired: true,
                  initialValue: penggunaViewModel.dataPengguna != null
                      ? penggunaViewModel.dataPengguna!.username
                      : "",
                  capitalization: TextCapitalization.words,
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(
                  height: 16,
                ),
                BuildTextField(
                  title: "Ringkasan Profil",
                  name: "profil",
                  isRequired: false,
                  initialValue: penggunaViewModel.dataPengguna != null
                      ? penggunaViewModel.dataPengguna!.profil
                      : "",
                  capitalization: TextCapitalization.sentences,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 16,
                ),
                BuildTextField(
                  title: "Alamat",
                  name: "alamat",
                  isRequired: true,
                  initialValue: penggunaViewModel.dataPengguna != null
                      ? penggunaViewModel.dataPengguna!.alamat
                      : "",
                  capitalization: TextCapitalization.sentences,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Wilayah",
                      style: text3(neutral500, regular),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10))),
                            context: context,
                            builder: (context) => BuildBottomSheetWilayah(
                                size: size,
                                penggunaViewModel: penggunaViewModel));
                      },
                      child: Container(
                        width: size.width,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: neutral200, width: 2)),
                        child: Text(
                          penggunaViewModel.tempWilayahData != null
                              ? penggunaViewModel.tempWilayahData!.wilayah
                              : "",
                          style: body(neutral500, regular),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                BuildTextField(
                  title: "Perusahaan",
                  name: "perusahaan",
                  isRequired: false,
                  initialValue: penggunaViewModel.dataPengguna != null
                      ? penggunaViewModel.dataPengguna!.perusahaan
                      : "",
                  capitalization: TextCapitalization.words,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 16,
                ),
                BuildTextField(
                  title: "Email",
                  name: "email",
                  isRequired: true,
                  initialValue: penggunaViewModel.dataPengguna != null
                      ? penggunaViewModel.dataPengguna!.email
                      : "",
                  capitalization: TextCapitalization.none,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 16,
                ),
                BuildTextField(
                  title: "No. Telepon",
                  name: "noTelp",
                  isRequired: true,
                  initialValue: penggunaViewModel.dataPengguna != null
                      ? penggunaViewModel.dataPengguna!.noTelp
                      : "",
                  capitalization: TextCapitalization.none,
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(
                  height: 16,
                ),
                BuildTextField(
                  title: "No. WhatsApp",
                  name: "noWa",
                  isRequired: false,
                  initialValue: penggunaViewModel.dataPengguna != null
                      ? penggunaViewModel.dataPengguna!.noWa
                      : "",
                  capitalization: TextCapitalization.none,
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(
                  height: 16,
                ),
                BuildTextField(
                  title: "Website",
                  name: "website",
                  isRequired: false,
                  initialValue: penggunaViewModel.dataPengguna != null
                      ? penggunaViewModel.dataPengguna!.website
                      : "",
                  capitalization: TextCapitalization.none,
                  keyboardType: TextInputType.url,
                ),
                const SizedBox(
                  height: 16,
                ),
                const BuildTextField(
                  title: "Password",
                  name: "password",
                  isRequired: true,
                  initialValue: "",
                  capitalization: TextCapitalization.none,
                  keyboardType: TextInputType.visiblePassword,
                ),
                const SizedBox(
                  height: 16,
                ),
                const BuildTextField(
                  title: "Ulangi Password",
                  name: "repeat_password",
                  isRequired: true,
                  initialValue: "",
                  capitalization: TextCapitalization.none,
                  keyboardType: TextInputType.visiblePassword,
                ),
                const SizedBox(
                  height: 32,
                ),
                RoundedButton(
                  text: "Perbarui Data",
                  ontap: () {
                    _formKey.currentState!.save();
                    if (_formKey.currentState!.value["namaPengguna"] != "" &&
                        _formKey.currentState!.value["username"] != "" &&
                        _formKey.currentState!.value["alamat"] != "" &&
                        _formKey.currentState!.value["email"] != "" &&
                        _formKey.currentState!.value["noTelp"] != "") {
                      penggunaViewModel
                          .updateData(PenggunaModel(
                              idPengguna: penggunaViewModel.idPengguna,
                              namaPengguna: _formKey
                                  .currentState!.value["namaPengguna"]
                                  .toString(),
                              profil: _formKey.currentState!.value["profil"]
                                  .toString(),
                              alamat: _formKey.currentState!.value["alamat"]
                                  .toString(),
                              idWilayah: penggunaViewModel
                                  .tempWilayahData!.idWilayah
                                  .toString(),
                              perusahaan: _formKey
                                  .currentState!.value["perusahaan"]
                                  .toString(),
                              email: _formKey.currentState!.value["email"]
                                  .toString(),
                              noTelp: _formKey.currentState!.value["noTelp"]
                                  .toString(),
                              noWa: _formKey.currentState!.value["noWa"]
                                  .toString(),
                              website: _formKey.currentState!.value["website"]
                                  .toString(),
                              hargaMin: penggunaViewModel.dataPengguna!.hargaMin
                                  .toString(),
                              hargaMax: penggunaViewModel.dataPengguna!.hargaMax
                                  .toString(),
                              username: _formKey.currentState!.value["username"]
                                  .toString(),
                              foto: penggunaViewModel.dataPengguna!.foto))
                          // penggunaViewModel
                          //     .updateData(
                          //   namaPengguna:
                          //       _formKey.currentState!.value["namaPengguna"],
                          //   username: _formKey.currentState!.value["username"],
                          //   profil: _formKey.currentState!.value["profil"],
                          //   alamat: _formKey.currentState!.value["alamat"],
                          //   idWilayah: penggunaViewModel.tempWilayahData!.idWilayah,
                          //   perusahaan: _formKey.currentState!.value["perusahaan"],
                          //   email: _formKey.currentState!.value["email"],
                          //   noTelp: _formKey.currentState!.value["noTelp"],
                          //   noWA: _formKey.currentState!.value["noWa"],
                          //   website: _formKey.currentState!.value["website"],
                          // )
                          .then((value) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            snackbarAlert(
                                size, value != null || value != 0 ? 1 : 2));
                        Navigator.pop(context);
                      });
                    } else {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(snackbarAlert(size, 3));
                    }
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  SnackBar snackbarAlert(Size size, int condition) {
    late String message;

    switch (condition) {
      case 1:
        message = "Data berhasil diperbarui!";
        break;
      case 2:
        message = "Data gagal diperbarui!";
        break;
      case 3:
        message = "Input yang anda masukkan tidak lengkap!";
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
            LottieBuilder.asset("assets/lotie/success_primary.json",
                width: 80, height: 80),
            Text(message,
                style: text3(neutral500, regular), textAlign: TextAlign.center),
          ],
        ));
  }
}
