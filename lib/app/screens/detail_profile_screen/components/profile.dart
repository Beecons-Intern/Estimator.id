import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nama Lengkap",
                      style: text3(neutral500, semibold),
                    ),
                    Text(
                      "Puji Kurniawan",
                      style: text3(neutral500, semibold),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ringkasan Profil",
                      style: text3(neutral500, semibold),
                    ),
                    Text(
                      "-",
                      style: text3(neutral500, semibold),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Alamat",
                      style: text3(neutral500, semibold),
                    ),
                    Text(
                      "Sleman Yogyakarta",
                      style: text3(neutral500, semibold),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Wilayah",
                      style: text3(neutral500, semibold),
                    ),
                    Text(
                      "Yogyakarta",
                      style: text3(neutral500, semibold),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Perusahaan",
                      style: text3(neutral500, semibold),
                    ),
                    Text(
                      "-",
                      style: text3(neutral500, semibold),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Email",
                      style: text3(neutral500, semibold),
                    ),
                    Text(
                      "Puji11@gmail.com",
                      style: text3(neutral500, semibold),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "No Telpon",
                      style: text3(neutral500, semibold),
                    ),
                    Text(
                      "0981916181617",
                      style: text3(neutral500, semibold),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Website",
                      style: text3(neutral500, semibold),
                    ),
                    Text(
                      "Pujikurniiawan.com",
                      style: text3(neutral500, semibold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}