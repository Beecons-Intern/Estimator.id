import 'dart:io';
import 'package:intl/intl.dart';
import 'package:path/path.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import '../../../../data/model/dokumen_model.dart';
import '../../../../data/model/proyek_model.dart';
import '../../../../utilities/utilities.dart';
import '../../../route/route_name.dart';
import '../../../view_model/pengguna_view_model.dart';
import '../../../view_model/profile_proyek_view_model.dart';
import '../../../widgets/rounded_button.dart';
import 'build_bottom_sheet_wilayah.dart';
import 'build_textfiled.dart';

class Body extends StatefulWidget {
  const Body({Key? key, this.isNew = false}) : super(key: key);
  final bool isNew;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String tahun = DateFormat.y().format(DateTime.now());
  String tglDibuat = DateFormat("y-M-d").format(DateTime.now());
  String jamDibuat = DateFormat.Hms().format(DateTime.now());
  String noPhoto = "no-foto.jpg";
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
    final penggunaViewModel =
        Provider.of<PenggunaViewModel>(context, listen: false);
    final profileProyekViewModel = Provider.of<ProfileProyekViewModel>(context);
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
                  initialValue: profileProyekViewModel.dataProyek != null &&
                          profileProyekViewModel.dataProyek!.namaProyek != ""
                      ? profileProyekViewModel.dataProyek!.namaProyek
                      : "",
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
                                        profileProyekViewModel,
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
                            profileProyekViewModel.wilayahData != null
                                ? profileProyekViewModel.wilayahData!.wilayah
                                : "Pilih wilayah anda",
                            style: text3(
                                profileProyekViewModel.wilayahData != null
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
                    initialValue: profileProyekViewModel.dataProyek != null &&
                            profileProyekViewModel.dataProyek!.pemilik != ""
                        ? profileProyekViewModel.dataProyek!.pemilik
                        : "",
                    isRequired: true),
                const SizedBox(
                  height: 20,
                ),
                BuildTextField(
                  title: "Jasa Kontraktor (%)",
                  name: "jasaKontraktor",
                  hint: "Masukkan nama pemilik proyek",
                  initialValue: profileProyekViewModel.dataProyek != null &&
                          profileProyekViewModel.dataProyek!.jasaKontraktor
                                  .toString() !=
                              ""
                      ? profileProyekViewModel.dataProyek!.jasaKontraktor
                          .toString()
                      : "",
                  isRequired: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                BuildTextField(
                  title: "Pajak (%)",
                  name: "pajak",
                  hint: "Masukkan nama pemilik proyek",
                  initialValue: profileProyekViewModel.dataProyek != null &&
                          profileProyekViewModel.dataProyek!.pajak.toString() !=
                              ""
                      ? profileProyekViewModel.dataProyek!.pajak.toString()
                      : "",
                  isRequired: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                const BuildTextField(
                  title: "Keterangan Lain",
                  name: "keteranganLain",
                  hint: "Masukkan keterangan tambahan",
                  initialValue: "",
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
          if (profileProyekViewModel.datasDokumen != null &&
              profileProyekViewModel.datasDokumen!.isNotEmpty) ...[
            ...profileProyekViewModel.datasDokumen!
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
                            profileProyekViewModel.removeItem(item);
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
              await selectFiles().then((value) => profileProyekViewModel
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
            height: 30,
          ),
          widget.isNew == true
              ? RoundedButton(
                  ontap: () {
                    _formKey.currentState!.save();
                    if (_formKey.currentState!.value["namaProyek"] != "" &&
                        _formKey.currentState!.value["pemilik"] != "" &&
                        _formKey.currentState!.value["jasaKontraktor"] != "" &&
                        _formKey.currentState!.value["pajak"] != "" &&
                        profileProyekViewModel.wilayahData != null) {
                      profileProyekViewModel
                          .saveProfileProyek(ProyekModel(
                              idPengguna: penggunaViewModel.idPengguna,
                              namaProyek:
                                  _formKey.currentState!.value["namaProyek"],
                              idWilayah:
                                  profileProyekViewModel.wilayahData!.idWilayah,
                              pemilik: _formKey.currentState!.value["pemilik"],
                              tahun: tahun,
                              jasaKontraktor: _formKey
                                      .currentState!.value["jasaKontraktor"]
                                      .toString()
                                      .contains(".")
                                  ? double.parse(_formKey
                                      .currentState!.value["jasaKontraktor"]
                                      .toString())
                                  : double.parse(
                                      "${_formKey.currentState!.value["jasaKontraktor"].toString()}.0"),
                              pajak: _formKey.currentState!.value["pajak"]
                                      .toString()
                                      .contains(".")
                                  ? double.parse(_formKey.currentState!.value["pajak"]
                                      .toString())
                                  : double.parse("${_formKey.currentState!.value["pajak"].toString()}.0"),
                              keteranganLain: _formKey.currentState!.value["keteranganLain"],
                              status: "1",
                              kategoriProyek: "1",
                              foto: file != null ? file.toString() : noPhoto,
                              tglDibuat: tglDibuat,
                              jamDibuat: jamDibuat))
                          .then((value) => Navigator.pushNamedAndRemoveUntil(context, RouteName.detailProyek, (Route<dynamic> route) => false, arguments: false));
                    }
                  },
                  text: "Simpan",
                )
              : RoundedButton(
                  ontap: () {},
                  text: "Perbarui",
                ),
          const SizedBox(
            height: 20,
          ),
          // RoundedButton(ontap: (){}, text: "Simpan",)
        ],
      ),
    );
  }
}
