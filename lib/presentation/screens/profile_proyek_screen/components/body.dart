import 'dart:io';
import 'package:path/path.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '../../../../utilities/utilities.dart';
import 'build_textfiled.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  File? file;
  List<String> nameFiles = [];
  Future selectImage() async {
    final result = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowedExtensions: ['jpg', 'png']);
    if (result == null) return;

    PlatformFile pickedFile = result.files.first;
    setState(() {
      file = File(pickedFile.path!);
    });
  }

  Future selectFiles() async {
    final result = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowedExtensions: ['pdf']);
    if (result == null) return;

    PlatformFile pickedFile = result.files.first;
    setState(() {
      nameFiles.add(basename(pickedFile.path!));
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List<String> listKota = [
      "Surabaya",
      "Yogyakarta",
      "Bandung",
      "Jakarta"
    ];
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: file != null
                        ? FileImage(file!) as ImageProvider
                        : const AssetImage("assets/img/no-foto.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () async {
                  await selectImage();
                },
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: DottedBorder(
                    color: primary,
                    strokeWidth: 1,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Ganti Foto",
                            style: text4(primary, regular),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          FormBuilder(
            child: Column(
              children: [
                const BuildTextField(
                  title: "Nama Proyek",
                  name: "nama_proyek",
                  hint: "Masukkan nama proyek",
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lokasi Proyek",
                        style: text3(neutral500, regular),
                      ),
                      FormBuilderDropdown(
                        name: "lokasi_proyek",
                        items: listKota
                            .map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    e,
                                    style: text3(neutral500, regular),
                                  ),
                                ))
                            .toList(),
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding:
                              const EdgeInsets.fromLTRB(0, 10, 12, 5),
                          hintText: "Pilih lokasi proyek",
                          hintStyle: text3(neutral200, regular),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: primary, width: 2),
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(width: 2, color: neutral200),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const BuildTextField(
                  title: "Pemilik Proyek",
                  name: "pemilik_proyek",
                  hint: "Masukkan nama pemilik proyek",
                ),
                const SizedBox(
                  height: 20,
                ),
                const BuildTextField(
                  title: "Jasa Kontraktor",
                  name: "jasa_kontraktor",
                  hint: "Masukkan nama pemilik proyek",
                  pajak: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                const BuildTextField(
                  title: "Pajak",
                  name: "pajak",
                  hint: "Masukkan nama pemilik proyek",
                  pajak: true,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Text(
            "Dokumen Tambahan",
            style: text3(neutral500, regular),
          ),
          const SizedBox(
            height: 10,
          ),
          if (nameFiles.isNotEmpty) ...[
            ...nameFiles
                .map((item) => Text(
                      item,
                      style: text4(neutral500, semibold),
                    ))
                .toList(),
          ],
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () async {
              await selectFiles();
            },
            child: Center(
              child: DottedBorder(
                  padding: const EdgeInsets.all(5),
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(5),
                  color: Colors.green,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        "assets/img/import_doc.png",
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "Upload Document",
                        style: text3(primary, regular),
                      )
                    ],
                  )),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          // RoundedButton(ontap: (){}, text: "Simpan",)
        ],
      ),
    );
  }
}
