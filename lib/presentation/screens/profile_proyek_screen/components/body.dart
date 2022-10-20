import 'dart:io';
import 'package:path/path.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import '../../../../data/model/dokumen_model.dart';
import '../../../../utilities/utilities.dart';
import '../../../view_model/profile_proyek_view_model.dart';
import '../../../view_model/wilayah_view_model.dart';
import 'build_bottom_sheet_wilayah.dart';
import 'build_textfiled.dart';

class Body extends StatefulWidget {
  const Body(
      {Key? key, this.isNew = false, required this.profileProyekViewModel})
      : super(key: key);
  final bool isNew;
  final ProfileProyekViewModel profileProyekViewModel;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  File? file;
  // List<String> nameFiles = [];
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
    if (result != null) {
      PlatformFile pickedFile = result.files.first;
      String nameFiles = basename(pickedFile.path!);
      return nameFiles;
    } else {
      return;
    }
  }

  final _formKey = GlobalKey<FormBuilderState>();

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
            key: _formKey,
            child: Column(
              children: [
                BuildTextField(
                  title: "Nama Proyek",
                  name: "namaProyek",
                  hint: "Masukkan nama proyek",
                  initialValue: widget.isNew == true
                      ? (widget.profileProyekViewModel.namaProyek ?? "")
                      : (widget.profileProyekViewModel.dataProyek != null
                          ? widget.profileProyekViewModel.dataProyek!.namaProyek
                          : ""),
                  isRequired: true,
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
                                    profileProyekViewModel:
                                        widget.profileProyekViewModel,
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
                    initialValue: widget.isNew == true
                        ? (widget.profileProyekViewModel.pemilik ?? "")
                        : (widget.profileProyekViewModel.dataProyek != null
                            ? widget
                                .profileProyekViewModel.dataProyek!.namaProyek
                            : ""),
                    isRequired: true),
                const SizedBox(
                  height: 20,
                ),
                BuildTextField(
                  title: "Jasa Kontraktor (%)",
                  name: "jasaKontraktor",
                  hint: "Masukkan nama pemilik proyek",
                  initialValue: widget.isNew == true
                      ? (widget.profileProyekViewModel.jasaKontraktor ?? "")
                      : (widget.profileProyekViewModel.dataProyek != null
                          ? widget
                              .profileProyekViewModel.dataProyek!.jasaKontraktor
                          : ""),
                  isRequired: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                BuildTextField(
                  title: "Pajak (%)",
                  name: "pajak",
                  hint: "Masukkan nama pemilik proyek",
                  initialValue: widget.isNew == true
                      ? (widget.profileProyekViewModel.pajak ?? "")
                      : (widget.profileProyekViewModel.dataProyek != null
                          ? widget.profileProyekViewModel.dataProyek!.pajak
                          : ""),
                  isRequired: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                BuildTextField(
                  title: "Keterangan Lain",
                  name: "keteranganLain",
                  hint: "Masukkan keterangan tambahan",
                  initialValue: widget.isNew == true
                      ? (widget.profileProyekViewModel.keteranganLain ?? "")
                      : (widget.profileProyekViewModel.dataProyek != null
                          ? widget
                              .profileProyekViewModel.dataProyek!.keteranganLain
                          : ""),
                  isRequired: false,
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
          if (widget.profileProyekViewModel.datasDokumen != null &&
              widget.profileProyekViewModel.datasDokumen!.isNotEmpty) ...[
            ...widget.profileProyekViewModel.datasDokumen!
                .map((item) => Row(
                      children: [
                        Text(
                          item.dokumen,
                          style: text4(neutral500, semibold),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            widget.profileProyekViewModel.removeItem(item);
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
              await selectFiles().then((value) => widget.profileProyekViewModel
                  .addItem(DokumenModel(idProyek: 0, dokumen: value)));
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
