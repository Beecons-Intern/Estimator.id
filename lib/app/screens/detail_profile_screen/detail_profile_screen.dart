import 'package:flutter/material.dart';

import '../../utilities/colors.dart';
import '../../utilities/text_styles.dart';
import 'components/body.dart';

class DetailProfileScreen extends StatelessWidget {
  const DetailProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Builder(
          builder: (context) => Scaffold(
                backgroundColor: primary,
                appBar: AppBar(
                  backgroundColor: primary,
                  elevation: 0,
                  leading: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: neutral100,
                  ),
                  centerTitle: true,
                  title: Text(
                    "Profil Pengguna",
                    style: text1(neutral100, bold),
                  ),
                ),
                body: const Body(),
              )),
    );
  }
}
