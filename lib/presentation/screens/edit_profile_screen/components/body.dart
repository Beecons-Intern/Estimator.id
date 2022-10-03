import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '../../../../utilities/utilities.dart';
import 'build_text_field.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                BuildTextField(
                    title: "Nama Lengkap",
                    name: "nama_lengkap",
                    initialValue: "Dani Kurniawan"),
                SizedBox(
                  height: 16,
                ),
                BuildTextField(
                    title: "Tentang",
                    name: "tentang",
                    initialValue:
                        "Saya adalah seorang buaya laut yang cantik menawan"),
                SizedBox(
                  height: 16,
                ),
                BuildTextField(
                    title: "Alamat",
                    name: "alamat",
                    initialValue: "Jl prionogo no 20 Sleman, Yogyakarta"),
                SizedBox(
                  height: 16,
                ),
                BuildTextField(
                    title: "Kota", name: "kota", initialValue: "Yogyakarta"),
                SizedBox(
                  height: 16,
                ),
                BuildTextField(
                    title: "Perusahaan",
                    name: "perusahaan",
                    initialValue: "CV Maju Jaya"),
                SizedBox(
                  height: 16,
                ),
                BuildTextField(
                    title: "Email",
                    name: "email",
                    initialValue: "majujaya@gmail.com"),
                SizedBox(
                  height: 16,
                ),
                BuildTextField(
                    title: "Telpon",
                    name: "telpon",
                    initialValue: "0891718191718"),
                SizedBox(
                  height: 16,
                ),
                BuildTextField(
                    title: "Website",
                    name: "website",
                    initialValue: "majujaya.com"),
                SizedBox(
                  height: 80,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
