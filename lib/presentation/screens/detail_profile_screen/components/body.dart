import 'package:flutter/material.dart';
import '../../../../utilities/utilities.dart';
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
  Widget build(BuildContext context) {
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
            Text("Habiyan Lazuardi", style: text2(neutral100, bold)),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Sleman, Yogyakarta",
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
              const Expanded(
                child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [Profile(), Pengalaman(), Kompetensi()]),
              ),
            ],
          ),
        ))
      ],
    );
  }
}
