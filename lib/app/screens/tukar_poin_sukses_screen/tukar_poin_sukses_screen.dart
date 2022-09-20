import 'package:flutter/material.dart';

import '../../route/route_name.dart';
import '../../utilities/colors.dart';
import '../../utilities/text_styles.dart';
import 'components/body.dart';

class TukarPoinSuksesScreen extends StatelessWidget {
  const TukarPoinSuksesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      // appBar: AppBar(
      //   elevation: 0.8,
      //   title: Text(
      //     "Transaksi Sukses",
      //     style: text1(neutral500, bold),
      //   ),
      //   centerTitle: true,
      //   leading: const Icon(
      //     Icons.arrow_back_ios_new_rounded,
      //     color: neutral500,
      //   ),
      //   backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      // ),
      body: const Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
              context, RouteName.navigation, (route) => false);
        },
        backgroundColor: neutral100,
        child: const Icon(
          Icons.close_rounded,
          color: primary,
          size: 36,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
