import 'package:flutter/material.dart';
import 'components/body.dart';
import '../../widgets/widgets.dart';
import '../../../../utilities/utilities.dart';

class TambahBahanScreen extends StatelessWidget {
  const TambahBahanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: primary,
        title: Text(
          "Tambah Bahan",
          style: text1(neutral100, bold),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: neutral100,
            )),
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
          ontap: () {},
          text: "Tambahkan Item",
        ),
      ),
      body: const Body(),
    );
  }
}
