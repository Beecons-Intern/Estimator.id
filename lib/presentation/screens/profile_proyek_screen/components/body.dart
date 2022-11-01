import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:open_filex/open_filex.dart';
import '../../../../utilities/strings.dart';
import '../../../../utilities/utilities.dart';
import '../../../view_model/profile_proyek_view_model.dart';
import 'build_textfiled.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.profileProyekViewModel})
      : super(key: key);
  final ProfileProyekViewModel profileProyekViewModel;
  static final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                    image: profileProyekViewModel.dataProyek!.foto != noPhoto
                        ? FileImage(
                                File(profileProyekViewModel.dataProyek!.foto))
                            as ImageProvider
                        : const AssetImage("assets/img/no-foto.jpg"),
                    fit: BoxFit.cover,
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
                  initialValue: profileProyekViewModel.dataProyek != null
                      ? profileProyekViewModel.dataProyek!.namaProyek
                      : "",
                  name: "nama",
                ),
                const SizedBox(
                  height: 20,
                ),
                BuildTextField(
                  title: "Lokasi Proyek",
                  initialValue: profileProyekViewModel.dataWilayah!.wilayah,
                  name: "lokasi",
                ),
                const SizedBox(
                  height: 20,
                ),
                BuildTextField(
                  title: "Pemilik Proyek",
                  initialValue: profileProyekViewModel.dataProyek != null
                      ? profileProyekViewModel.dataProyek!.pemilik
                      : "",
                  name: "pemilik",
                ),
                const SizedBox(
                  height: 20,
                ),
                BuildTextField(
                  title: "Jasa Kontraktor (%)",
                  initialValue: profileProyekViewModel.dataProyek != null
                      ? profileProyekViewModel.dataProyek!.jasaKontraktor
                      : "",
                  name: "jasa",
                ),
                const SizedBox(
                  height: 20,
                ),
                BuildTextField(
                  title: "Pajak (%)",
                  initialValue: profileProyekViewModel.dataProyek != null
                      ? profileProyekViewModel.dataProyek!.pajak
                      : "",
                  name: "pajak",
                ),
                const SizedBox(
                  height: 20,
                ),
                BuildTextField(
                  title: "Keterangan Lain",
                  initialValue: profileProyekViewModel.dataProyek != null
                      ? profileProyekViewModel.dataProyek!.keteranganLain
                      : "",
                  name: "keterangan",
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
          if (profileProyekViewModel.dataDokumen != null &&
              profileProyekViewModel.dataDokumen!.isNotEmpty) ...[
            ...profileProyekViewModel.dataDokumen!
                .map((item) => Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            OpenFilex.open(item.dokumen);
                          },
                          child: Text(
                            "dokumen ${profileProyekViewModel.dataDokumen!.indexOf(item) + 1}",
                            style: text4(primary, regular),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ))
                .toList(),
          ],
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
