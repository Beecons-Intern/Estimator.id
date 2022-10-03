import 'package:flutter/material.dart';
import '../../../widgets/widgets.dart';
import '../../../../utilities/utilities.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Column(
              children: const [
                BuildInputFieldPoin(
                  title: "Input Nomor Pelanggan",
                ),
                BuildInputFieldPoin(
                  title: "Nama Pelanggan",
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Text(
              "Pilihlah voucher indihome sesuai dengan poin yang anda miliki",
              style: text4(neutral500, regular),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const BuildPricePoinGrid()
        ],
      ),
    );
  }
}
