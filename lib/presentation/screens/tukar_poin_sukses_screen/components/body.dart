import 'package:barcode_widget/barcode_widget.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../../utilities/utilities.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Lottie.asset("assets/lotie/success.json", width: 42),
            Center(
              child: Text(
                "Transaksi Sukses!",
                style: text1(neutral100, bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: size.width,
              decoration: const BoxDecoration(
                  color: neutral100,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            "Voucher Akun Premium 50000",
                            style: text2(neutral500, bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            "Kode Voucher Anda",
                            style: text3(neutral500, light),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "867838",
                              style: text2(neutral500, bold),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.copy,
                              color: primary,
                              size: 16,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 5,
                    color: neutral200.withOpacity(0.6),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 5, bottom: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Detail Penerima",
                          style: text2(neutral500, bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Nama Pelanggan",
                              style: text3(neutral500, regular),
                            ),
                            Text(
                              "Anton Sanjaya",
                              style: text3(neutral500, regular),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "No Telepon",
                              style: text3(neutral500, regular),
                            ),
                            Text(
                              "089765436789",
                              style: text3(neutral500, regular),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 5,
                    color: neutral200.withOpacity(0.6),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 5, bottom: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Detail Pembayaran",
                          style: text2(neutral500, bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Voucher Akun Premium",
                              style: text3(neutral500, regular),
                            ),
                            Text(
                              "Rp 50.000",
                              style: text3(neutral500, regular),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(color: primary800),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Poin Yang Ditukarkan",
                          style: text3(neutral100, bold),
                        ),
                        Text(
                          "800 Poin",
                          style: text3(neutral100, bold),
                        )
                      ],
                    ),
                  ),
                  DottedLine(
                    dashColor: neutral200.withOpacity(0.8),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: Text(
                    "NO REFERENSI",
                    style: text4(neutral200, semibold),
                  )),
                  const SizedBox(
                    height: 2,
                  ),
                  Center(
                      child: Text(
                    "SPR-82348628634",
                    style: text3(neutral500, regular),
                  )),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    child: Center(
                      child: BarcodeWidget(
                        drawText: false,
                        barcode: Barcode.code128(escapes: true),
                        data: "24151646416545614",
                        width: size.width,
                        height: 60,
                      ),
                    ),
                  )
                ],
              ),
            )
            /* Text(
              "Selamat! Anda berhasil menukarkan poin dengan vocher diskon akun premium. Gunakan kode vocher berikut untuk mendapatkan potongan harga ketika upgrade akun premium Estimator.id",
              style: text3(neutral500, medium),
              textAlign: TextAlign.center,
            ),
            SvgPicture.asset("assets/img/sukses.svg"),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Kode Voucher",
              style: text2(neutral500, medium),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: BoxDecoration(
                color: neutral100,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 5,
                      blurRadius: 8,
                      color: const Color(0xFFE6E6E6).withOpacity(0.8),
                      offset: const Offset(0, 1)),
                ],
              ),
              child: Text(
                "4ASD7JKL",
                style: text3(neutral500, bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.file_copy,
                  color: primary,
                  size: 16,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "salin kode",
                  style: text4(primary, medium),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            RoundedButton(text: "Beranda", ontap: () {}) */
          ],
        ),
      ),
    );
  }
}
