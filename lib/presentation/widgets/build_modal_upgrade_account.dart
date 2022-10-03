import 'package:flutter/material.dart';

import '../../utilities/utilities.dart';
import '../route/route_name.dart';
import 'rounded_button.dart';

class BuildModalUpgradeAccount extends StatelessWidget {
  const BuildModalUpgradeAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(10))),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                  "assets/img/image_upgrade.png"),
              const SizedBox(
                height: 10,
              ),
              Text("Saatnya Upgrade Paket Anda",
                  style: text3(neutral500, bold),
                  textAlign: TextAlign.center),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Fitur ini hanya tersedia untuk akun premium. Nikmati fitur tanpa batas dengan beralih ke akun premium dan dapatkan harga spesial khusus untuk Anda!",
                style: text4(neutral500, regular),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),
              RoundedButton(
                text: "Upgrade",
                ontap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, RouteName.paket);
                },
              )
            ],
          ),
        );
  }
}