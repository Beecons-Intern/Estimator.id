import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../../presentation/route/route_name.dart';
import '../../utilities/utilities.dart';
import 'rounded_button.dart';

class BuildModalSheetConfirmation extends StatelessWidget {
  const BuildModalSheetConfirmation(
      {Key? key,
      required this.namaPelanggan,
      required this.keteranganNomor,
      required this.nomor,
      required this.keteranganPembayaran,
      required this.pembayaran,
      required this.jumlahPoin,
      required this.textButton})
      : super(key: key);

  final String namaPelanggan;
  final String keteranganNomor;
  final String nomor;
  final String keteranganPembayaran;
  final String pembayaran;
  final String jumlahPoin;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return RoundedButton(
      ontap: () {
        showModalBottomSheet(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            context: context,
            builder: (context) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Detail Penerima",
                        style: text2(neutral500, bold),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Nama Pelanggan",
                            style: text3(neutral500, regular),
                          ),
                          Text(
                            namaPelanggan,
                            style: text3(neutral500, regular),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            keteranganNomor,
                            style: text3(neutral500, regular),
                          ),
                          Text(
                            nomor,
                            style: text3(neutral500, regular),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Divider(
                      color: neutral200.withOpacity(0.5),
                      thickness: 4,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Detail Pembayaran",
                        style: text2(neutral500, bold),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            keteranganPembayaran,
                            style: text3(neutral500, regular),
                          ),
                          Text(
                            pembayaran,
                            style: text3(neutral500, regular),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: DottedLine(
                        dashColor: neutral200.withOpacity(0.8),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Poin Yang Ditukarkan",
                            style: text3(neutral500, bold),
                          ),
                          Text(
                            jumlahPoin,
                            style: text3(neutral500, bold),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: RoundedButton(
                        text: "Konfirmasi",
                        ontap: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, RouteName.tukarSukses, (route) => false);
                        },
                      ),
                    )
                  ],
                ),
              );
            });
      },
      text: textButton,
    );
  }
}
