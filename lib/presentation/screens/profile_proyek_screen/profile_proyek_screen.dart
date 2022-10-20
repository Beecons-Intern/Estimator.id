import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../route/route_name.dart';
import '../../view_model/detail_proyek_view_model.dart';
import '../../view_model/profile_proyek_view_model.dart';
import '../../view_model/proyek_perencanaan_view_model.dart';
import '../../view_model/template_proyek_view_model.dart';
import '../../widgets/widgets.dart';
import '../../../../utilities/utilities.dart';
import 'components/body.dart';

class ProfileProyekScreen extends StatelessWidget {
  const ProfileProyekScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final templateProyekViewModel =
        Provider.of<TemplateProyekViewModel>(context, listen: false);
    final proyekPerencanaanViewModel =
        Provider.of<ProyekPerencanaanViewModel>(context);
    final profileProyekViewModel = Provider.of<ProfileProyekViewModel>(context);
    final detailProyekViewModel =
        Provider.of<DetailProyekViewModel>(context, listen: false);
    final isNew = ModalRoute.of(context)!.settings.arguments as bool;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: primary,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: neutral100,
              )),
          title: Text(
            "Profil Proyek",
            style: text1(neutral100, bold),
          ),
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
          child: isNew == true
              ? RoundedButton(
                  ontap: () async {
                    if (isNew == true) {
                      if (profileProyekViewModel.namaProyek != null &&
                          profileProyekViewModel.idWilayah != null &&
                          profileProyekViewModel.pemilik != null &&
                          profileProyekViewModel.jasaKontraktor != null &&
                          profileProyekViewModel.pajak != null) {
                        profileProyekViewModel.insertDataProyek().then((value) {
                          proyekPerencanaanViewModel.setDataProyek(
                              profileProyekViewModel.dataProyek!,
                              templateProyekViewModel
                                  .datasTemplateKategoriPekerjaan!,
                              templateProyekViewModel
                                  .datasTemplateHargaSatuanList!,
                              templateProyekViewModel.datasTemplateAhs!);

                          proyekPerencanaanViewModel
                              .insertPerencanaa()
                              .then((value) {
                            detailProyekViewModel.setDataDetaikProyek(
                                proyekPerencanaanViewModel.dataProyek!,
                                proyekPerencanaanViewModel.dataPelaksanaProyek!,
                                proyekPerencanaanViewModel
                                    .datasKategoriPekerjaan!,
                                proyekPerencanaanViewModel.datasHargaSatuan!,
                                proyekPerencanaanViewModel.datasAHS!);

                            Navigator.pushNamedAndRemoveUntil(context,
                                RouteName.detailProyek, (route) => false);
                          });
                        });
                      }
                    }
                  },
                  text: "Simpan",
                )
              : RoundedButton(
                  ontap: () {},
                  text: "Perbarui Data",
                ),
        ),
        body: Body(
          isNew: isNew,
          profileProyekViewModel: profileProyekViewModel,
        ));
  }
}
