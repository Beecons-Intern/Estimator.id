import 'package:estimator_id/app/screens/tukar_poin_sukses_screen/tukar_poin_sukses_screen.dart';
import 'package:flutter/material.dart';

import 'app/utilities/colors.dart';
import 'app/utilities/text_styles.dart';
import 'app/widgets/build_modal_sheet_confirmation.dart';
import 'app/widgets/build_price_poin_grid.dart';
import 'app/widgets/build_price_poin_radio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estimator',
      theme: ThemeData(fontFamily: 'Quicksand'),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          "E-Wallet",
          style: text1(neutral500, bold),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios_rounded,
          color: neutral500,
        ),
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
            textButton: "Lanjutkan",
            jumlahPoin: "800 Poin",
            namaPelanggan: "Anton Wijaya",
            keteranganNomor: "No Telepon",
            nomor: "078687764764",
            keteranganPembayaran: "Voucher Akun Premium",
            pembayaran: "Rp 50.000"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Text(
                "Pilih E-Wallet",
                style: text3(neutral500, bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  ...icons
                      .map((item) => GestureDetector(
                            onTap: () {
                              setState(() {
                                indexSelected = icons.indexOf(item);
                              });
                            },
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              margin: EdgeInsets.only(
                                  right: 10,
                                  bottom: 5,
                                  top: 5,
                                  left: icons.indexOf(item) == 0
                                      ? size.width * 0.05
                                      : 0),
                              width: 86,
                              decoration: BoxDecoration(
                                color: neutral100,
                                border: indexSelected != null &&
                                        indexSelected == icons.indexOf(item)
                                    ? Border.all(color: primary, width: 2)
                                    : null,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      color: Colors.black.withOpacity(0.1),
                                      offset: const Offset(0, 1)),
                                ],
                              ),
                              child: Image.asset(item),
                            ),
                          ))
                      .toList()
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Input No",
                    style: text3(neutral500, bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    cursorColor: primary,
                    decoration: const InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.fromLTRB(16, 20, 20, 0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primary, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: neutral200),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: const BuildPricePoinRadio(),
            ),
            const SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}
