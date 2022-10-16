import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../../data/model/proyek_model.dart';
import '../../../../data/model/template_proyek_model.dart';
import '../../../../utilities/utilities.dart';
import '../../../route/route_name.dart';
import '../../../view_model/detail_proyek_view_model.dart';
import '../../../view_model/profile_proyek_view_model.dart';

class BuildItemCard extends StatelessWidget {
  const BuildItemCard(
      {super.key,
      required this.size,
      required this.items,
      required this.templateProyekModel});

  final Size size;
  final List<String> items;
  final TemplateProyekModel templateProyekModel;

  @override
  Widget build(BuildContext context) {
    String tglDibuat = DateFormat("y-M-d").format(DateTime.now());
    String jamDibuat = DateFormat.Hms().format(DateTime.now());
    final profileProyekViewModel =
        Provider.of<ProfileProyekViewModel>(context, listen: false);
    final detailProyekViewModel =
        Provider.of<DetailProyekViewModel>(context, listen: false);
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            context: context,
            builder: (context) => Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () async {
                          Navigator.pop(context);
                          switch (index) {
                            case 0:
                              await detailProyekViewModel.getDataKategori(
                                  templateProyekModel.idTemplate);
                              await detailProyekViewModel
                                  .getDataHargaSatuan(
                                      templateProyekModel.idTemplate)
                                  .then((value) {
                                profileProyekViewModel.setDataProyek(
                                    ProyekModel(
                                        idPengguna: 0,
                                        namaProyek:
                                            templateProyekModel.namaProyek,
                                        idWilayah: "3404",
                                        pemilik: "Estimator.id",
                                        tahun: "",
                                        jasaKontraktor:
                                            templateProyekModel.jasaKontraktor,
                                        pajak: templateProyekModel.pajak,
                                        keteranganLain: "",
                                        status: "",
                                        kategoriProyek: "",
                                        foto: "",
                                        tglDibuat: tglDibuat,
                                        jamDibuat: jamDibuat));
                                Navigator.pushNamed(
                                    context, RouteName.detailProyek,
                                    arguments: true);
                              });

                              break;
                            case 1:
                              Navigator.pushNamed(
                                  context, RouteName.profileProyek,
                                  arguments: true);
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
                    separatorBuilder: (context, index) => const Divider(
                          thickness: 1,
                        ),
                    itemCount: items.length)));
      },
      child: Container(
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
            const SizedBox(
              height: 2,
            ),
            Center(
              child: Text(
                templateProyekModel.namaProyek,
                style: text3(neutral500, bold),
                textAlign: TextAlign.center,
              ),
            ),
            const Divider(
              thickness: 1,
              color: neutral200,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Jenis",
                  style: text4(neutral300, regular),
                ),
                Expanded(
                  child: Text(
                    templateProyekModel.jenisProyek,
                    style: text4(neutral500, semibold),
                    textAlign: TextAlign.right,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Kategori",
                  style: text4(neutral300, regular),
                ),
                Expanded(
                  child: Text(
                    templateProyekModel.kategoriProyek,
                    style: text4(neutral500, semibold),
                    textAlign: TextAlign.right,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Struktur",
                  style: text4(neutral300, regular),
                ),
                Expanded(
                  child: Text(
                    templateProyekModel.struktur,
                    style: text4(neutral500, semibold),
                    textAlign: TextAlign.right,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Lantai",
                  style: text4(neutral300, regular),
                ),
                Expanded(
                  child: Text(
                    templateProyekModel.lantai,
                    style: text4(neutral500, semibold),
                    textAlign: TextAlign.right,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dinding",
                  style: text4(neutral300, regular),
                ),
                Expanded(
                  child: Text(
                    templateProyekModel.dinding,
                    style: text4(neutral500, semibold),
                    textAlign: TextAlign.right,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Atap",
                  style: text4(neutral300, regular),
                ),
                Expanded(
                  child: Text(
                    templateProyekModel.atap,
                    style: text4(neutral500, semibold),
                    textAlign: TextAlign.right,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
