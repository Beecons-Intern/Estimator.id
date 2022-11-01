import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:validators/validators.dart';
import '../../../../utilities/utilities.dart';
import '../../../view_model/pengguna_view_model.dart';
import '../../../view_model/wilayah_view_model.dart';
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
  XFile? pickedFile;
  String? nameFile;

  Future selectFile() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? result = await _picker.pickImage(source: ImageSource.gallery);
    if (result == null) return;

    setState(() {
      pickedFile = result;
      if (pickedFile != null) {
        nameFile = basename(pickedFile!.path);
      }
    });
  }

  Future<String> saveImage() async {
    final File image = File(pickedFile!.path);
    final Directory extDir = await getApplicationDocumentsDirectory();
    String dirPath = extDir.path;
    final File newImage = await image.copy("$dirPath/$nameFile");
    return newImage.path;
  }

  @override
  Widget build(BuildContext context) {
    final penggunaViewModel = Provider.of<PenggunaViewModel>(context);
    final wilayahViewModel = Provider.of<WilayahViewModel>(context);
    final Size size = MediaQuery.of(context).size;
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
                        image: penggunaViewModel.dataPengguna != null &&
                                penggunaViewModel.dataPengguna!.foto != ""
                            ? FileImage(
                                File(penggunaViewModel.dataPengguna!.foto))
                            : pickedFile != null
                                ? FileImage(File(pickedFile!.path))
                                    as ImageProvider
                                : const AssetImage("assets/icon/avatar.png")),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () async {
                        await selectFile();
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
                                  wilayahViewModel: wilayahViewModel,
                                )).then((value) => penggunaViewModel
                            .setTempWilayah(wilayahViewModel.wilayahData!));
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
                BuildTextField(
                  title: "Password",
                  name: "password",
                  isRequired: true,
                  initialValue: penggunaViewModel.dataPengguna != null
                      ? penggunaViewModel.dataPengguna!.password
                      : "",
                  capitalization: TextCapitalization.none,
                  keyboardType: TextInputType.visiblePassword,
                  isPassword: true,
                ),
                const SizedBox(
                  height: 16,
                ),
                BuildTextField(
                  title: "Ulangi Password",
                  name: "repeat_password",
                  isRequired: true,
                  initialValue: penggunaViewModel.dataPengguna != null
                      ? penggunaViewModel.dataPengguna!.password
                      : "",
                  capitalization: TextCapitalization.none,
                  keyboardType: TextInputType.visiblePassword,
                  isPassword: true,
                ),
                const SizedBox(
                  height: 32,
                ),
                RoundedButton(
                  text: "Perbarui Data",
                  ontap: () async {
                    _formKey.currentState!.save();
                    if (_formKey.currentState!.value["namaPengguna"] != null &&
                        _formKey.currentState!.value["namaPengguna"] != "" &&
                        _formKey.currentState!.value["username"] != null &&
                        _formKey.currentState!.value["username"] != "" &&
                        _formKey.currentState!.value["alamat"] != null &&
                        _formKey.currentState!.value["alamat"] != "" &&
                        _formKey.currentState!.value["email"] != null &&
                        _formKey.currentState!.value["email"] != "" &&
                        _formKey.currentState!.value["noTelp"] != null &&
                        _formKey.currentState!.value["noTelp"] != "") {
                      if (!isEmail(_formKey.currentState!.value["email"])) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(snackbarAlert(size, 4));
                        return;
                      }

                      String? foto;

                      if (pickedFile != null) {
                        foto = await saveImage();
                      }

                      penggunaViewModel
                          .updateData(
                              _formKey.currentState!.value["namaPengguna"],
                              _formKey.currentState!.value["username"],
                              _formKey.currentState!.value["profil"],
                              _formKey.currentState!.value["alamat"],
                              penggunaViewModel.tempWilayahData!.idWilayah,
                              _formKey.currentState!.value["perusahaan"],
                              _formKey.currentState!.value["email"],
                              _formKey.currentState!.value["noTelp"],
                              _formKey.currentState!.value["noWa"],
                              _formKey.currentState!.value["website"],
                              _formKey.currentState!.value["password"],
                              foto ?? penggunaViewModel.dataPengguna!.foto)
                          .then((value) {
                        if (value == true) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(snackbarAlert(size, 1));
                          return;
                        }

                        ScaffoldMessenger.of(context)
                            .showSnackBar(snackbarAlert(size, 2));
                        return;
                      });
                    } else {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(snackbarAlert(size, 3));
                      return;
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
    late String image;

    switch (condition) {
      case 1:
        message = "Data berhasil diperbarui!";
        image = "assets/lotie/success_primary.json";
        break;
      case 2:
        message = "Data gagal diperbarui!";
        image = "assets/lotie/error.json";
        break;
      case 3:
        message = "Input yang anda masukkan tidak lengkap!";
        image = "assets/lotie/error.json";
        break;
      case 4:
        message = "Email yang anda masukkan tidak valid!";
        image = "assets/lotie/error.json";
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
            LottieBuilder.asset(image, width: 80, height: 80),
            Text(message,
                style: text3(neutral500, regular), textAlign: TextAlign.center),
          ],
        ));
  }
}
