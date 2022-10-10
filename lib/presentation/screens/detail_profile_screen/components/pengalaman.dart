import 'package:estimator_id/data/model/pengalaman_proyek_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import '../../../../utilities/utilities.dart';
import '../../../view_model/pengalaman_proyek_view_model.dart';
import '../../../view_model/pengguna_view_model.dart';
import '../../../widgets/widgets.dart';

class Pengalaman extends StatelessWidget {
  const Pengalaman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    Size size = MediaQuery.of(context).size;
    final pengalamanProyekViewModel =
        Provider.of<PengalamanProyekViewModel>(context);
    final penggunaViewModel = Provider.of<PenggunaViewModel>(context);
    return body(
        pengalamanProyekViewModel, size, formKey, penggunaViewModel, context);
  }
}

Widget body(PengalamanProyekViewModel pengalamanProyekViewModel, size, formKey,
    PenggunaViewModel penggunaViewModel, context) {
  final isLoading =
      pengalamanProyekViewModel.state == PengalamanProyekState.loading;
  final isError =
      pengalamanProyekViewModel.state == PengalamanProyekState.error;

  if (isLoading) {
    return const Center(
      child: CircularProgressIndicator(
        color: primary,
      ),
    );
  }

  if (isError) {
    return const Center(
      child: Text("Gagal menampilkan data!"),
    );
  }

  return Container(
      margin: const EdgeInsets.only(top: 20),
      child: GridView(
        padding: EdgeInsets.only(
            top: 5,
            left: size.width * 0.05,
            right: size.width * 0.05,
            bottom: 16),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10, mainAxisSpacing: 16, crossAxisCount: 2),
        children: [
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Tambah Pengalaman Proyek",
                              style: text3(neutral500, semibold),
                              textAlign: TextAlign.left,
                            ),
                            const Divider(),
                            const SizedBox(
                              height: 5,
                            ),
                            FormBuilder(
                                key: formKey,
                                child: Column(
                                  children: [
                                    buildTextField(
                                        title: "Nama Proyek",
                                        capitalization:
                                            TextCapitalization.words,
                                        keyboardType: TextInputType.name,
                                        name: "namaProyek"),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    buildTextField(
                                        title: "Tahun",
                                        capitalization: TextCapitalization.none,
                                        keyboardType: TextInputType.number,
                                        name: "tahun"),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    buildTextField(
                                        title: "Posisi",
                                        capitalization:
                                            TextCapitalization.words,
                                        keyboardType: TextInputType.name,
                                        name: "posisi"),
                                  ],
                                )),
                            const SizedBox(
                              height: 16,
                            ),
                            RoundedButton(
                              ontap: () {
                                formKey.currentState!.save();
                                if (formKey.currentState!.value["namaProyek"] !=
                                        null &&
                                    formKey.currentState!.value["tahun"] !=
                                        null &&
                                    formKey.currentState!.value["posisi"] !=
                                        null) {
                                  pengalamanProyekViewModel
                                      .insertData(PengalamanProyekModel(
                                          idPengalaman: 0,
                                          idPengguna: penggunaViewModel
                                              .dataPengguna!.idPengguna
                                              .toString(),
                                          namaProyek: formKey
                                              .currentState!.value["namaProyek"]
                                              .toString(),
                                          tahun: formKey
                                              .currentState!.value["tahun"]
                                              .toString(),
                                          posisi: formKey
                                              .currentState!.value["posisi"]
                                              .toString()))
                                      .then((value) {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: Text(value != null || value != 0
                                          ? "Data berhasil ditambahkan"
                                          : "Data gagal diperbarui"),
                                      duration: const Duration(seconds: 1),
                                    ));
                                    pengalamanProyekViewModel.getDatas().then(
                                        (value) => Navigator.pop(context));
                                  });
                                }
                              },
                              text: "Tambahkan",
                            )
                          ],
                        ),
                      ));
            },
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                  color: neutral100,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: primary, width: 2),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 2,
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, 1)),
                  ],
                ),
                child: const Center(
                  child: Icon(
                    Icons.add_circle_rounded,
                    color: primary,
                    size: 42,
                  ),
                )),
          ),
          if (pengalamanProyekViewModel.datasPengalaman != null &&
              pengalamanProyekViewModel.datasPengalaman!.isNotEmpty)
            ...pengalamanProyekViewModel.datasPengalaman!
                .map((e) => buildCardItem(e, size))
                .toList(),
        ],
      ));
}

Widget buildTextField({
  required title,
  required capitalization,
  required keyboardType,
  required name,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: text4(neutral500, regular),
      ),
      const SizedBox(
        height: 5,
      ),
      FormBuilderTextField(
        name: name,
        textCapitalization: capitalization,
        keyboardType: keyboardType,
        cursorColor: primary,
        decoration: InputDecoration(
          hintStyle: text3(primary, regular),
          isDense: true,
          contentPadding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: primary, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: neutral200),
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      )
    ],
  );
}

Widget buildCardItem(PengalamanProyekModel pengalamanProyekModel, size) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    decoration: BoxDecoration(
      color: neutral100,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      boxShadow: [
        BoxShadow(
            spreadRadius: 2,
            blurRadius: 2,
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 1)),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/img/house.png",
          width: size.width,
          fit: BoxFit.fill,
        ),
        Text(
          "${pengalamanProyekModel.tahun}, ${pengalamanProyekModel.posisi}",
          style: text3(neutral500, bold),
        ),
        Text(
          pengalamanProyekModel.namaProyek,
          style: text4(neutral500, medium),
        )
      ],
    ),
  );
}
