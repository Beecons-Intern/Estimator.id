import 'package:estimator_id/presentation/view_model/template_proyek_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../utilities/strings.dart';
import '../../../route/route_name.dart';
import '../../../../utilities/utilities.dart';
import '../../../view_model/proyek_perencanaan_view_model.dart';
import '../../../view_model/wilayah_view_model.dart';
import 'build_item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final templateProyekViewModel =
        Provider.of<TemplateProyekViewModel>(context, listen: false);
    final wilayahViewModel =
        Provider.of<WilayahViewModel>(context, listen: false);
    final proyekPerencanaanViewModel =
        Provider.of<ProyekPerencanaanViewModel>(context);
    List<String> items = ["Lihat", "Gunakan Template"];
    Size size = MediaQuery.of(context).size;
    return GridView(
        padding: EdgeInsets.only(
          top: 20,
          left: size.width * 0.05,
          right: size.width * 0.05,
        ),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.55,
            crossAxisSpacing: 10,
            mainAxisSpacing: 16,
            crossAxisCount: 2),
        children: [
          GestureDetector(
            onTap: () {
              proyekPerencanaanViewModel.isNew();
              proyekPerencanaanViewModel.namaProyek = "";
              proyekPerencanaanViewModel.pajak = "0.11";
              proyekPerencanaanViewModel.jasaKontraktor = "0.1";
              proyekPerencanaanViewModel.keteranganLain = "";
              proyekPerencanaanViewModel.pemilik = "Estimator.id";
              wilayahViewModel.getWilayah(wilayahSleman);
              Navigator.pushNamed(context, RouteName.editPerencanaan,
                  arguments: false);
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
          if (templateProyekViewModel.datasTemplateProyek != null &&
              templateProyekViewModel.datasTemplateProyek!.isNotEmpty)
            ...templateProyekViewModel.datasTemplateProyek!
                .map((templateProyek) => BuildItemCard(
                      size: size,
                      items: items,
                      templateProyekModel: templateProyek,
                      templateProyekViewModel: templateProyekViewModel,
                      wilayahViewModel: wilayahViewModel,
                      proyekPerencanaanViewModel: proyekPerencanaanViewModel,
                    ))
                .toList(),
        ]);
  }
}
