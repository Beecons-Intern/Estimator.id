import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../route/route_name.dart';
import '../../utilities/colors.dart';
import '../../utilities/text_styles.dart';
import '../../widgets/rounded_button.dart';
import 'components/body.dart';

class ProyekBaruPenawaran extends StatelessWidget {
  const ProyekBaruPenawaran({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
            "Lengkapi Profil Proyek",
            style: text1(neutral100, bold),
          ),
          centerTitle: true,
        ),
        bottomSheet: Container(
          padding:
              EdgeInsets.symmetric(horizontal: size.width * 0.05, vertical: 12),
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
              Navigator.pushNamed(context, RouteName.buatRABPerencanaan);
            },
            text: "Simpan",
          ),
        ),
        body: const Body());
  }
}
