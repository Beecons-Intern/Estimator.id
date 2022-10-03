import 'package:flutter/material.dart';
import '../../../widgets/widgets.dart';
import '../../../../utilities/utilities.dart';

class Kompetensi extends StatelessWidget {
  const Kompetensi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bidang Kompetensi",
              style: text3(neutral500, regular),
            ),
            const SizedBox(
              height: 5,
            ),
            const BuildTextField(hint: ""),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Harga Jasa",
              style: text3(neutral500, regular),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(child: BuildTextField(hint: "")),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    "-",
                    style: text3(neutral500, bold),
                  ),
                ),
                const Expanded(child: BuildTextField(hint: "")),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            RoundedButton(
              ontap: () {},
              text: "Simpan",
            )
          ],
        ),
      ),
    );
  }
}
