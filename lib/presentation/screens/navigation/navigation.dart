import 'package:estimator_id/presentation/view_model/koleksi_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../route/route_name.dart';
import '../../../../utilities/utilities.dart';
import '../../view_model/pengguna_view_model.dart';
import '../../view_model/template_proyek_view_model.dart';
import '../../widgets/widgets.dart';
import '../home_screen/home_screen.dart';
import '../koleksi_screen/koleksi_screen.dart';
import '../profile_screen/profile_screen.dart';
import '../proyek_screen/proyek_screen.dart';
import 'components/navigation_button.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Future.wait([
        Provider.of<PenggunaViewModel>(context, listen: false).getUser(),
        Provider.of<KoleksiViewModel>(context, listen: false).getAhs(),
        Provider.of<KoleksiViewModel>(context, listen: false).getBahan()
      ]);
    });
    super.initState();
  }

  List pages = const [
    HomeScreen(),
    ProyekScreen(),
    KoleksiScreen(),
    ProfileScreen()
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final templateProyekViewModel =
        Provider.of<TemplateProyekViewModel>(context);
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: pages[index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              context: context,
              builder: (context) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Tambah",
                        style: text1(neutral500, bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      buildOptionProyek(
                          size,
                          "assets/img/perencanaan.png",
                          "Perencanaan",
                          "Proyek perencanaan berlaku bagi estimator untuk estimasi anggaran proyek",
                          () {
                        Navigator.pop(context);
                        templateProyekViewModel.getAllDatas().then((value) =>
                            Navigator.pushNamed(
                                context, RouteName.perencanaan));
                      }),
                      buildOptionProyek(
                          size,
                          "assets/img/penawaran.png",
                          "Penawaran",
                          "Proyek penawaran berlaku bagi kontraktor untuk penawaran nilai pagu proyek",
                          () {
                        Navigator.pop(context);
                        // Navigator.pushNamed(context, RouteName.profileProyek);
                        showDialog(
                            context: context,
                            builder: (context) =>
                                const BuildModalUpgradeAccount());
                      }),
                      buildOptionProyek(
                          size,
                          "assets/img/koleksi.png",
                          "Koleksi",
                          "Catatan proyek yang berguna bagi kontraktor untuk penawaran nilai pagu proyek",
                          () {
                        Navigator.pop(context);
                        showDialog(
                            context: context,
                            builder: (context) =>
                                const BuildModalUpgradeAccount());
                        /* Navigator.pushNamed(context, RouteName.profileProyek); */
                      })
                    ],
                  ),
                );
              });
        },
        backgroundColor: primary,
        child: const Icon(
          Icons.add,
          color: neutral100,
          size: 42,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(95, 59, 59, 59),
                spreadRadius: 1,
                blurRadius: 10),
          ],
        ),
        child: BottomAppBar(
          notchMargin: 5.0,
          shape: const CircularNotchedRectangle(),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
            height: 46,
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      NavigationButton(
                        onPressed: () {
                          setState(() {
                            index = 0;
                          });
                        },
                        icon: Icon(
                          Icons.other_houses_outlined,
                          color: index == 0 ? primary : const Color(0xFF969696),
                          size: 28,
                        ),
                        text: Text(
                          "Beranda",
                          style: text4(index == 0 ? primary : neutral500,
                              index == 0 ? bold : medium),
                        ),
                      ),
                      NavigationButton(
                          onPressed: () {
                            setState(() {
                              index = 1;
                            });
                          },
                          icon: Icon(
                            Icons.grid_view_outlined,
                            color:
                                index == 1 ? primary : const Color(0xFF969696),
                            size: 28,
                          ),
                          text: Text(
                            "Proyek",
                            style: text4(index == 1 ? primary : neutral500,
                                index == 1 ? bold : medium),
                          )),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      NavigationButton(
                          onPressed: () {
                            setState(() {
                              index = 2;
                            });
                          },
                          icon: Icon(
                            Icons.email_outlined,
                            color:
                                index == 2 ? primary : const Color(0xFF969696),
                            size: 28,
                          ),
                          text: Text(
                            "Koleksi",
                            style: text4(index == 2 ? primary : neutral500,
                                index == 2 ? bold : medium),
                          )),
                      NavigationButton(
                          onPressed: () {
                            setState(() {
                              index = 3;
                            });
                          },
                          icon: Icon(
                            Icons.person_outline_rounded,
                            color:
                                index == 3 ? primary : const Color(0xFF969696),
                            size: 28,
                          ),
                          text: Text(
                            "Akun",
                            style: text4(index == 3 ? primary : neutral500,
                                index == 3 ? bold : medium),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector buildOptionProyek(Size size, String image, String title,
      String subtitle, void Function()? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 16),
        width: size.width,
        decoration: BoxDecoration(
            border: Border.all(color: primary, width: 2),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Row(
          children: [
            Image.asset(
              image,
              width: 80,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: text2(neutral500, semibold),
                ),
                Text(
                  subtitle,
                  style: text4(neutral500, regular),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
