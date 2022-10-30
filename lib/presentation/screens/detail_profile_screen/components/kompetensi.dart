import 'package:estimator_id/presentation/view_model/kompetensi_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:validators/validators.dart';
import '../../../view_model/pengguna_view_model.dart';
import '../../../../utilities/utilities.dart';
import '../../../widgets/rounded_button.dart';
import 'BuildItemKompetensi.dart';
import 'BuildTextFieldKompetensi.dart';

class Kompetensi extends StatefulWidget {
  const Kompetensi({Key? key}) : super(key: key);

  @override
  State<Kompetensi> createState() => _KompetensiState();
}

class _KompetensiState extends State<Kompetensi> {
  List<String> listKompetensi = [
    "Air",
    "Arsitek",
    "Bangunan Gedung",
    "Building",
    "Desain",
    "Daftar",
    "Estimator",
    "Gedung",
    "Interior",
    "Irigasi",
    "Jalan",
    "Jasa Design & Build",
    "Jembatan",
    "Kantor",
    "Kontraktor",
    "Kontruksi",
    "Lanskep",
    "MEP",
    "Pelaksana"
  ];

  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    final kompetensiViewModel = Provider.of<KompetensiViewModel>(context);
    final penggunaViewModel = Provider.of<PenggunaViewModel>(context);
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bidang Kompetensi",
              style: text3(neutral500, regular),
            ),
            const SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) => Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.05),
                              child: Wrap(
                                children: listKompetensi
                                    .map((e) => BuildItemKompetensi(
                                          text: e,
                                          kompetensiViewModel:
                                              kompetensiViewModel,
                                          penggunaViewModel: penggunaViewModel,
                                        ))
                                    .toList(),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                          ],
                        ));
              },
              child: Container(
                width: size.width,
                padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: kompetensiViewModel.datasKompetensi != null &&
                            kompetensiViewModel.datasKompetensi!.isNotEmpty
                        ? 6
                        : 12),
                decoration: BoxDecoration(
                    border: Border.all(color: neutral200, width: 2),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: kompetensiViewModel.datasKompetensi != null &&
                        kompetensiViewModel.datasKompetensi!.isNotEmpty
                    ? Wrap(
                        children: kompetensiViewModel.datasKompetensi!
                            .map((e) => Container(
                                  margin: const EdgeInsets.only(
                                      top: 4, right: 4, bottom: 4),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 2),
                                  decoration: const BoxDecoration(
                                      color: accentYellow500,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        e.kompetensi,
                                        style:
                                            const TextStyle(color: neutral100),
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          kompetensiViewModel.removeItem(e);
                                        },
                                        child: const Icon(
                                          Icons.close_rounded,
                                          size: 16,
                                          color: neutral100,
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                            .toList(),
                      )
                    : Text(
                        "Pilih Kompetensi",
                        style: text3(neutral500, regular),
                      ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Harga Jasa",
              style: text3(neutral500, regular),
            ),
            const SizedBox(
              height: 5,
            ),
            FormBuilder(
              key: _formKey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: BuildTextFieldKompetensi(
                    name: "hargaMin",
                    initialValue: penggunaViewModel.dataPengguna!.hargaMin
                                .toString() !=
                            "0.0"
                        ? penggunaViewModel.dataPengguna!.hargaMin.toString()
                        : penggunaViewModel.dataPengguna!.hargaMin
                            .toString()[0],
                  )),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "-",
                      style: text3(neutral500, bold),
                    ),
                  ),
                  Expanded(
                      child: BuildTextFieldKompetensi(
                    name: "hargaMax",
                    initialValue: penggunaViewModel.dataPengguna!.hargaMax
                                .toString() !=
                            "0.0"
                        ? penggunaViewModel.dataPengguna!.hargaMax.toString()
                        : penggunaViewModel.dataPengguna!.hargaMax
                            .toString()[0],
                  )),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            RoundedButton(
              ontap: () async {
                _formKey.currentState!.save();
                if (_formKey.currentState!.value["hargaMin"] != null &&
                    _formKey.currentState!.value["hargaMin"] != "" &&
                    _formKey.currentState!.value["hargaMax"] != null &&
                    _formKey.currentState!.value["hargaMax"] != "") {
                  if (isNumeric(_formKey.currentState!.value["hargaMin"]
                          .toString()) &&
                      isNumeric(_formKey.currentState!.value["hargaMax"]
                          .toString())) {
                    penggunaViewModel
                        .updateKompetensi(
                            _formKey.currentState!.value["hargaMin"]
                                        .runtimeType ==
                                    double
                                ? _formKey.currentState!.value["hargaMin"]
                                    as double
                                : double.parse(
                                    "${_formKey.currentState!.value["hargaMin"]}.0"),
                            _formKey.currentState!.value["hargaMax"]
                                        .runtimeType ==
                                    double
                                ? _formKey.currentState!.value["hargaMax"]
                                    as double
                                : double.parse(
                                    "${_formKey.currentState!.value["hargaMax"]}.0"))
                        .then((value) {
                      if (value == true) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(snackbarAlert(size, 1));
                        return;
                      }
                    });
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(snackbarAlert(size, 2));
                    return;
                  }
                }

                await kompetensiViewModel.insertData();
                await kompetensiViewModel.deleteData();
              },
              text: "Simpan",
            )
          ],
        ),
      ),
    );
  }

  SnackBar snackbarAlert(Size size, int condition) {
    late String message;
    late String image;

    switch (condition) {
      case 1:
        message = "Data berhasil disimpan!";
        image = "assets/lotie/success_primary.json";
        break;
      case 2:
        message = "Pastikan inputan harga jasa berupa numerik!";
        image = "assets/lotie/error.json";
        break;
      case 3:
        message = "Data gagal disimpan";
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
