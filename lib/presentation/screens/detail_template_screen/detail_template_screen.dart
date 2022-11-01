import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utilities/strings.dart';
import '../../../utilities/utilities.dart';
import '../../route/route_name.dart';
import '../../view_model/proyek_perencanaan_view_model.dart';
import '../../view_model/template_proyek_view_model.dart';
import '../../view_model/wilayah_view_model.dart';
import '../../widgets/widgets.dart';
import 'components/body.dart';

class DetailTemplateScreen extends StatelessWidget {
  const DetailTemplateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final templateProyekViewModel =
        Provider.of<TemplateProyekViewModel>(context, listen: false);
    final wilayahViewModel =
        Provider.of<WilayahViewModel>(context, listen: false);
    final proyekPerencanaanViewModel =
        Provider.of<ProyekPerencanaanViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primary,
        title: Text(
          "Detail Template Proyek",
          style: text1(neutral100, bold),
          overflow: TextOverflow.ellipsis,
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: neutral100,
            )),
        centerTitle: true,
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.05, vertical: size.height * 0.015),
        width: size.width,
        height: size.height * 0.09,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
                spreadRadius: 2,
                blurRadius: 2,
                color: Colors.black.withOpacity(0.2),
                offset: const Offset(0, 1)),
          ],
        ),
        child: RoundedButton(
          ontap: () {
            proyekPerencanaanViewModel.isNew();
            proyekPerencanaanViewModel.namaProyek =
                templateProyekViewModel.selectedTemplateProyek!.namaProyek;
            proyekPerencanaanViewModel.pajak =
                templateProyekViewModel.selectedTemplateProyek!.pajak;
            proyekPerencanaanViewModel.jasaKontraktor =
                templateProyekViewModel.selectedTemplateProyek!.pajak;
            proyekPerencanaanViewModel.keteranganLain = "";
            proyekPerencanaanViewModel.pemilik = "Estimator.id";
            wilayahViewModel.getWilayah(wilayahSleman).then((value) =>
                Navigator.pushNamed(context, RouteName.editPerencanaan,
                    arguments: true));
          },
          text: "Gunakan Template",
        ),
      ),
      body: Body(
        templateProyekViewModel: templateProyekViewModel,
      ),
    );
  }
}
