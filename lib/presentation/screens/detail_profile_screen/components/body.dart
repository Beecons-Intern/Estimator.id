import 'package:estimator_id/presentation/view_model/pengalaman_proyek_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../utilities/utilities.dart';
import '../../../view_model/pengguna_view_model.dart';
import 'kompetensi.dart';
import 'pengalaman.dart';
import 'profile.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int indexPage = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Future.wait([
        Provider.of<PengalamanProyekViewModel>(context, listen: false)
            .getDatas()
      ]);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final penggunaViewModel = Provider.of<PenggunaViewModel>(context);
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            Center(
              child: Container(
                height: size.height * 0.2,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,
                      color: Theme.of(context).scaffoldBackgroundColor),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, 1)),
                  ],
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: const DecorationImage(
                      scale: 0.5,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/img/profil.jpg")),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
                penggunaViewModel.dataPengguna != null
                    ? penggunaViewModel.dataPengguna!.namaPengguna
                    : "-",
                style: text2(neutral100, bold)),
            const SizedBox(
              height: 5,
            ),
            Text(
              "${penggunaViewModel.wilayahData != null ? penggunaViewModel.wilayahData!.wilayah : "-"}, ${penggunaViewModel.prov != null ? penggunaViewModel.prov! : ""}",
              style: text4(neutral100, regular),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
        Expanded(
            child: Container(
          width: size.width,
          decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Column(
            children: [
              TabBar(
                onTap: (index) {
                  setState(() {
                    indexPage = index;
                  });
                },
                indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide(color: primary, width: 3),
                    insets: EdgeInsets.symmetric(horizontal: 10)),
                isScrollable: false,
                tabs: [
                  Tab(
                    child: Text(
                      "Informasi Profil",
                      style: text3(indexPage == 0 ? primary : neutral200, bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Pengalaman Proyek",
                      style: text3(indexPage == 1 ? primary : neutral200, bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Bidang Kompetensi",
                      style: text3(indexPage == 2 ? primary : neutral200, bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Profile(penggunaViewModel: penggunaViewModel),
                      const Pengalaman(),
                      const Kompetensi()
                    ]),
              ),
            ],
          ),
        ))
      ],
    );
  }
}
