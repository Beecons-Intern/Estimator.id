import 'package:flutter/material.dart';
import '../../../../utilities/utilities.dart';
import '../../../view_model/pengguna_view_model.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key, required this.penggunaViewModel}) : super(key: key);
  final PenggunaViewModel penggunaViewModel;

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
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Nama Lengkap",
                        style: text3(neutral500, semibold),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(left: 24),
                        child: Text(
                          penggunaViewModel.data != null
                              ? penggunaViewModel.data!.nama
                              : "-",
                          style: text3(neutral500, regular),
                          textAlign: TextAlign.right,
                        ),
                      ),
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
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Ringkasan Profil",
                        style: text3(neutral500, semibold),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(left: 24),
                        child: Text(
                          penggunaViewModel.data != null
                              ? penggunaViewModel.data!.profil
                              : "-",
                          style: text3(neutral500, regular),
                          textAlign: TextAlign.right,
                        ),
                      ),
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
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Alamat",
                        style: text3(neutral500, semibold),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(left: 24),
                        child: Text(
                          penggunaViewModel.data != null
                              ? penggunaViewModel.data!.alamat
                              : "-",
                          style: text3(neutral500, regular),
                          textAlign: TextAlign.right,
                        ),
                      ),
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
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Wilayah",
                        style: text3(neutral500, semibold),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(left: 24),
                        child: Text(
                          "${penggunaViewModel.wilayahData != null ? penggunaViewModel.wilayahData!.wilayah : "-"}, ${penggunaViewModel.prov != null ? penggunaViewModel.prov! : ""}",
                          style: text3(neutral500, regular),
                          textAlign: TextAlign.right,
                        ),
                      ),
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
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Perusahaan",
                        style: text3(neutral500, semibold),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(left: 24),
                        child: Text(
                          penggunaViewModel.data != null
                              ? penggunaViewModel.data!.perusahaan
                              : "-",
                          style: text3(neutral500, regular),
                          textAlign: TextAlign.right,
                        ),
                      ),
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
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Email",
                        style: text3(neutral500, semibold),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(left: 24),
                        child: Text(
                          penggunaViewModel.data != null
                              ? penggunaViewModel.data!.email
                              : "-",
                          style: text3(neutral500, regular),
                          textAlign: TextAlign.right,
                        ),
                      ),
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
                    Expanded(
                      flex: 1,
                      child: Text(
                        "No. Telpon",
                        style: text3(neutral500, semibold),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(left: 24),
                        child: Text(
                          penggunaViewModel.data != null
                              ? penggunaViewModel.data!.noTelp
                              : "-",
                          style: text3(neutral500, regular),
                          textAlign: TextAlign.right,
                        ),
                      ),
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
                    Expanded(
                      flex: 1,
                      child: Text(
                        "No. WhatsApp",
                        style: text3(neutral500, semibold),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(left: 24),
                        child: Text(
                          penggunaViewModel.data != null
                              ? penggunaViewModel.data!.noWa
                              : "-",
                          style: text3(neutral500, regular),
                          textAlign: TextAlign.right,
                        ),
                      ),
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
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Website",
                        style: text3(neutral500, semibold),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(left: 24),
                        child: Text(
                          penggunaViewModel.data != null
                              ? penggunaViewModel.data!.website
                              : "-",
                          style: text3(neutral500, regular),
                          textAlign: TextAlign.right,
                        ),
                      ),
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
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Username",
                        style: text3(neutral500, semibold),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(left: 24),
                        child: Text(
                          penggunaViewModel.data != null
                              ? penggunaViewModel.data!.username
                              : "-",
                          style: text3(neutral500, regular),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              )
            ],
          ),
        ],
      ),
    );
  }
}
