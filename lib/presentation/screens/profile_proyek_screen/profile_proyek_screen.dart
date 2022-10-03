import 'package:flutter/material.dart';
import '../../route/route_name.dart';
import '../../widgets/widgets.dart';
import '../../../../utilities/utilities.dart';
import 'components/body.dart';

class ProfileProyekScreen extends StatelessWidget {
  const ProfileProyekScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
              if (isNew == true) {
                Navigator.pushNamed(context, RouteName.detailProyek,
                    arguments: true);
              } else {
                Navigator.pop(context);
              }
            },
            text: "Simpan",
          ),
        ),
        body: const Body());
  }
}
