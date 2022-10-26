import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../../../route/route_name.dart';
import '../../../../utilities/utilities.dart';
import '../../../view_model/pelaksana_proyek_view_model.dart';
import '../../../view_model/proyek_view_model.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      "Lihat",
      "Profil Proyek",
      "Laporan",
      "Bagikan",
      "Duplikat",
      "Hapus",
      "Proyek Selesai"
    ];
    final Size size = MediaQuery.of(context).size;
    final proyekViewModel = Provider.of<ProyekViewModel>(context);
    print(proyekViewModel.datasProyek);
    print(proyekViewModel.datasProyekUser);
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height * 0.05,
          decoration: const BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16))),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.01,
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                width: size.width,
                height: 42,
                decoration: BoxDecoration(
                    color: neutral100,
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 1,
                          blurRadius: 5,
                          color: const Color(0xFFE6E6E6).withOpacity(0.8),
                          offset: const Offset(0, 5)),
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: FormBuilderTextField(
                  name: "search",
                  cursorColor: primary,
                  style: text2(neutral500, regular),
                  decoration: InputDecoration(
                    isDense: false,
                    icon: const Icon(
                      Icons.search,
                      color: primary,
                    ),
                    border: InputBorder.none,
                    hintText: "Ketik apa yang kamu ingin cari",
                    hintStyle: text2(neutral200, regular),
                  ),
                )),
            Expanded(
              child: GridView.builder(
                  padding: EdgeInsets.only(
                      top: 16,
                      left: size.width * 0.05,
                      right: size.width * 0.05,
                      bottom: 20),
                  itemCount: proyekViewModel.datasProyekUser != null &&
                          proyekViewModel.datasPelaksanaProyek!.isNotEmpty
                      ? proyekViewModel.datasProyekUser!.length
                      : 0,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.57,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 16,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                          color: neutral100,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 2,
                                color: Colors.black.withOpacity(0.1),
                                offset: const Offset(0, 1)),
                          ],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10))),
                                context: context,
                                builder: (context) => Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 20),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.05),
                                    child: ListView.separated(
                                        shrinkWrap: true,
                                        itemBuilder: (context, index) {
                                          return GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                              switch (index) {
                                                case 0:
                                                  Navigator.pushNamed(context,
                                                      RouteName.detailProyek,
                                                      arguments: false);
                                                  break;
                                                case 1:
                                                  Navigator.pushNamed(context,
                                                      RouteName.profileProyek,
                                                      arguments: false);
                                                  break;
                                                case 2:
                                                  Navigator.pushNamed(context,
                                                      RouteName.laporanRAB);
                                                  break;
                                                case 4:
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                          snackbarCopyDuplikat(
                                                              size,
                                                              "diduplikat"));
                                                  break;
                                                default:
                                              }
                                            },
                                            child: Text(
                                              items[index],
                                              style: text2(neutral500, regular),
                                            ),
                                          );
                                        },
                                        separatorBuilder: (context, index) =>
                                            const Divider(
                                              thickness: 1,
                                            ),
                                        itemCount: items.length)));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/img/no-foto.jpg",
                                width: size.width,
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                proyekViewModel
                                    .datasProyekUser![index].namaProyek,
                                style: text3(neutral500, bold),
                                textAlign: TextAlign.center,
                              ),
                              const Divider(
                                thickness: 1,
                                color: neutral200,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.person_outline_rounded,
                                    color: neutral300,
                                    size: 16,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      proyekViewModel
                                          .datasProyekUser![index].pemilik,
                                      style: text4(neutral500, semibold),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on_outlined,
                                    color: neutral300,
                                    size: 16,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      proyekViewModel.allWilayahData != null
                                          ? proyekViewModel
                                              .allWilayahData![index].wilayah
                                          : "",
                                      style: text4(neutral500, semibold),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.calendar_month_outlined,
                                    color: neutral300,
                                    size: 16,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      proyekViewModel
                                          .datasProyekUser![index].tahun,
                                      style: text4(neutral500, semibold),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )),
            ),
          ],
        ),
      ],
    );
  }

  SnackBar snackbarCopyDuplikat(Size size, String jenis) {
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
            LottieBuilder.asset("assets/lotie/success_primary.json",
                width: 80, height: 80),
            Text("Data item pekerjaan berhasil $jenis",
                style: text3(neutral500, regular), textAlign: TextAlign.center),
          ],
        ));
  }
}
