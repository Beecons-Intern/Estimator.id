import 'package:estimator_id/presentation/view_model/pengguna_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../route/route_name.dart';
import '../../../../utilities/utilities.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map> listMenu = [
    {
      "icon": const Icon(Icons.account_circle_outlined,
          color: neutral500, size: 30),
      "title": "Profile Pengguna"
    },
    {
      "icon":
          const Icon(Icons.file_download_outlined, color: neutral500, size: 30),
      "title": "Pilihan Paket"
    },
    {
      "icon": const Icon(Icons.feedback_outlined, color: neutral500, size: 30),
      "title": "Umpan Balik"
    },
    {
      "icon":
          const Icon(Icons.warning_amber_rounded, color: neutral500, size: 30),
      "title": "Lapor Kesalahan"
    },
    {
      "icon": const Icon(Icons.logout_rounded, color: neutral500, size: 30),
      "title": "Keluar"
    }
  ];
  @override
  Widget build(BuildContext context) {
    final penggunaViewModel = Provider.of<PenggunaViewModel>(context);
    Size size = MediaQuery.of(context).size;
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          top: 0,
          child: SizedBox(
            height: size.height * 0.3,
            width: size.width,
            child: Center(
              child: Container(
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
          ),
        ),
        DraggableScrollableSheet(
          initialChildSize: 0.6,
          minChildSize: 0.6,
          maxChildSize: 1,
          builder: (context, controller) => ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Container(
              decoration: const BoxDecoration(
                color: neutral100,
              ),
              child: SingleChildScrollView(
                controller: controller,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 16,
                        left: size.width * 0.05,
                        right: size.width * 0.05,
                      ),
                      decoration: BoxDecoration(
                          color: neutral200.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            penggunaViewModel.dataPengguna !=
                                                    null
                                                ? penggunaViewModel
                                                    .dataPengguna!.namaPengguna
                                                : "-",
                                            style: text1(primary, bold),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Text(
                                            "${penggunaViewModel.wilayahData != null ? penggunaViewModel.wilayahData!.wilayah : ""}, ${penggunaViewModel.prov != null ? penggunaViewModel.prov! : ""}",
                                            style: text3(neutral500, regular),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                                  context, RouteName.editProfil)
                                              .then((value) =>
                                                  penggunaViewModel.getUser());
                                        },
                                        child: Row(
                                          children: [
                                            const Icon(
                                                Icons.mode_edit_outline_rounded,
                                                color: primary,
                                                size: 12),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              "Edit Profil",
                                              style: text4(primary, bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: primary,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 45,
                                            width: 45,
                                            child: Image.asset(
                                                "assets/icon/koin.png"),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Poin saat ini",
                                                  style: text4(
                                                      neutral100, semibold),
                                                ),
                                                Text(
                                                  "2908",
                                                  style: text2(
                                                      neutral100, semibold),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        Navigator.pushNamed(
                                                            context,
                                                            RouteName
                                                                .riwayatPoin);
                                                      },
                                                      child: const Text(
                                                        "Riwayat Poin",
                                                        style: TextStyle(
                                                            color: neutral100,
                                                            fontSize: 12,
                                                            fontWeight: medium,
                                                            decoration:
                                                                TextDecoration
                                                                    .underline),
                                                      )),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              height: 50,
                              decoration: BoxDecoration(
                                  color: accentYellow500,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Tipe Akun",
                                        style: text4(neutral100, medium),
                                      ),
                                      Text(
                                        "Standard",
                                        style: text2(neutral100, bold),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: primary,
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, RouteName.paket);
                                      },
                                      child: Text(
                                        "Upgrade",
                                        style: text4(neutral100, bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => ListTile(
                              onTap: () {
                                switch (index) {
                                  case 0:
                                    Navigator.pushNamed(
                                        context, RouteName.detailProfile);
                                    break;
                                  case 1:
                                    Navigator.pushNamed(
                                        context, RouteName.paket);
                                    break;
                                  case 2:
                                    Navigator.pushNamed(
                                        context, RouteName.ulasan);
                                    break;
                                  case 3:
                                    Navigator.pushNamed(
                                        context, RouteName.kesalahan);
                                    break;
                                  case 4:
                                    Navigator.pushNamed(
                                        context, RouteName.loginScreen);
                                    break;
                                  default:
                                }
                              },
                              dense: true,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.05, vertical: 0),
                              leading: listMenu[index]["icon"],
                              title: Text(listMenu[index]["title"],
                                  style: text3(neutral500, medium)),
                              trailing: const Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 24,
                              ),
                            ),
                        separatorBuilder: (context, index) => const Divider(
                              thickness: 2,
                            ),
                        itemCount: listMenu.length),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
