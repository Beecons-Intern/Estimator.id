import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path/path.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import '../../../../utilities/utilities.dart';
import '../../../view_model/proyek_perencanaan_view_model.dart';
import '../../../view_model/wilayah_view_model.dart';
import 'build_bottom_sheet_wilayah.dart';
import 'build_textfiled.dart';

class Body extends StatefulWidget {
  const Body({Key? key, required this.proyekPerencanaanViewModel})
      : super(key: key);
  final ProyekPerencanaanViewModel proyekPerencanaanViewModel;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  XFile? pickedFile;

  Future selectImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? result = await _picker.pickImage(source: ImageSource.gallery);
    if (result == null) return;

    setState(() {
      pickedFile = result;
    });
  }

  Future<File?> selectFile() async {
    final result = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowedExtensions: ['pdf']);
    if (result != null) {
      PlatformFile pickedFile = result.files.first;
      return File(pickedFile.path!);
    } else {
      return null;
    }
  }

  static final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final wilayahViewModel = Provider.of<WilayahViewModel>(context);
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
                    image: pickedFile != null
                        ? FileImage(File(pickedFile!.path)) as ImageProvider
                        : const AssetImage("assets/img/no-foto.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () async {
                  await selectImage();
                  if (pickedFile != null) {
                    widget.proyekPerencanaanViewModel.newPhoto = pickedFile!;
                  }
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
            key: _formKey,
            child: Column(
              children: [
                BuildTextField(
                  title: "Nama Proyek",
                  name: "namaProyek",
                  hint: "Masukkan nama proyek",
                  initialValue:
                      widget.proyekPerencanaanViewModel.namaProyek ?? "",
                  isRequired: true,
                  onChanged: (String? value) {
                    if (value != null) {
                      widget.proyekPerencanaanViewModel.namaProyek = value;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "Lokasi Proyek",
                          style: text3(neutral500, regular),
                        ),
                        TextSpan(
                          text: "*",
                          style: text3(accentOrange500, regular),
                        )
                      ])),
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
                                    proyekPerencanaanViewModel:
                                        widget.proyekPerencanaanViewModel,
                                    wilayahViewModel: wilayahViewModel,
                                  ));
                        },
                        child: Container(
                          width: size.width,
                          padding: const EdgeInsets.fromLTRB(0, 10, 12, 5),
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom:
                                      BorderSide(width: 2, color: neutral200))),
                          child: Text(
                            wilayahViewModel.wilayahData != null
                                ? wilayahViewModel.wilayahData!.wilayah
                                : "Pilih wilayah anda",
                            style: text3(
                                wilayahViewModel.wilayahData != null
                                    ? neutral500
                                    : neutral200,
                                regular),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                BuildTextField(
                  title: "Pemilik Proyek",
                  name: "pemilik",
                  hint: "Masukkan nama pemilik proyek",
                  initialValue: widget.proyekPerencanaanViewModel.pemilik ?? "",
                  isRequired: true,
                  onChanged: (String? value) {
                    if (value != null) {
                      widget.proyekPerencanaanViewModel.pemilik = value;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                BuildTextField(
                  title: "Jasa Kontraktor (%)",
                  name: "jasaKontraktor",
                  hint: "Masukkan nama pemilik proyek",
                  initialValue:
                      widget.proyekPerencanaanViewModel.jasaKontraktor ?? "",
                  isRequired: true,
                  onChanged: (String? value) {
                    if (value != null) {
                      widget.proyekPerencanaanViewModel.jasaKontraktor = value;
                    }
                  },
                  isNumber: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                BuildTextField(
                  title: "Pajak (%)",
                  name: "pajak",
                  hint: "Masukkan nama pemilik proyek",
                  initialValue: widget.proyekPerencanaanViewModel.pajak ?? "",
                  isRequired: true,
                  onChanged: (String? value) {
                    if (value != null) {
                      widget.proyekPerencanaanViewModel.pajak = value;
                    }
                  },
                  isNumber: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                BuildTextField(
                  title: "Keterangan Lain",
                  name: "keteranganLain",
                  hint: "Masukkan keterangan tambahan",
                  initialValue:
                      widget.proyekPerencanaanViewModel.keteranganLain ?? "",
                  isRequired: false,
                  onChanged: (String? value) {
                    if (value != null) {
                      widget.proyekPerencanaanViewModel.keteranganLain = value;
                    }
                  },
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
          if (widget.proyekPerencanaanViewModel.datasDokumen != null &&
              widget.proyekPerencanaanViewModel.datasDokumen!.isNotEmpty) ...[
            ...widget.proyekPerencanaanViewModel.datasDokumen!
                .map((item) => Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            OpenFilex.open(item.path);
                          },
                          child: Text(
                            basename(item.path),
                            style: text4(primary, regular),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            widget.proyekPerencanaanViewModel.removeItem(item);
                          },
                          child: const Icon(
                            Icons.delete_rounded,
                            color: accentOrange500,
                            size: 16,
                          ),
                        )
                      ],
                    ))
                .toList(),
          ],
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () async {
              await selectFile().then((value) async {
                if (value == null) return;
                widget.proyekPerencanaanViewModel.addItem(value);
              });
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
        ],
      ),
    );
  }
}
