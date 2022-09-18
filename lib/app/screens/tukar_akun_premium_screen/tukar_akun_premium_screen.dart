import 'package:flutter/material.dart';

import '../../utilities/colors.dart';
import '../../utilities/text_styles.dart';
import '../../widgets/build_modal_sheet_confirmation.dart';
import '../../widgets/rounded_button.dart';
import 'components/body.dart';

class TukarAkunPremiumScreen extends StatelessWidget {
  const TukarAkunPremiumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.8,
        title: Text(
          "Voucher Akun Premium",
          style: text1(neutral500, bold),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: neutral500,
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      bottomSheet: Container(
        padding:
            EdgeInsets.symmetric(horizontal: size.width * 0.05, vertical: 10),
        width: size.width,
        height: size.height * 0.1,
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
        child: const BuildModalSheetConfirmation(
            textButton: "Pilih Voucher",
            jumlahPoin: "800 Poin",
            namaPelanggan: "Anton Wijaya",
            keteranganNomor: "No Telepon",
            nomor: "078687764764",
            keteranganPembayaran: "Voucher Akun Premium",
            pembayaran: "Rp 50.000"),
      ),
      body: const Body(),
    );
  }
}
