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
    return body(pengalamanProyekViewModel, size, formKey, penggunaViewModel);
  }
}

Widget body(PengalamanProyekViewModel pengalamanProyekViewModel, size, formKey,
    penggunaViewModel) {
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
    child: GridView.builder(
        padding: EdgeInsets.only(
          top: 5,
          left: size.width * 0.05,
          right: size.width * 0.05,
        ),
        itemCount: pengalamanProyekViewModel.data != null &&
                pengalamanProyekViewModel.data!.isNotEmpty
            ? pengalamanProyekViewModel.data!.length
            : 1,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10, mainAxisSpacing: 16, crossAxisCount: 2),
        itemBuilder: (context, index) => index == 0
            ? GestureDetector(
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
                                            capitalization:
                                                TextCapitalization.none,
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
                                    if (formKey.currentState!
                                                .value["namaProyek"] !=
                                            "" &&
                                        formKey.currentState!.value["tahun"] !=
                                            "" &&
                                        formKey.currentState!.value["posisi"] !=
                                            "") {
                                      pengalamanProyekViewModel
                                          .insertData(
                                              idPengguna:
                                                  penggunaViewModel.data!.id,
                                              namaProyek: formKey.currentState!
                                                  .value["namaProyek"],
                                              tahun: formKey
                                                  .currentState!.value["tahun"],
                                              posisi: formKey.currentState!
                                                  .value["posisi"])
                                          .then((value) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content: Text(value != null
                                              ? "Data berhasil ditambahkan"
                                              : "Data gagal diperbarui"),
                                          duration: const Duration(seconds: 1),
                                        ));
                                        Navigator.pop(context);
                                      });
                                    }
                                  },
                                  text: "Tambahkan",
                                )
                              ],
                            ),
                          )).then(
                      (value) => pengalamanProyekViewModel.inisialData());
                },
                child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
              )
            : Container(
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
                      "2022, Estimator",
                      style: text3(neutral500, bold),
                    ),
                    Text(
                      "Pembangunan perumahan",
                      style: text4(neutral500, medium),
                    )
                  ],
                ),
              )),
  );
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
