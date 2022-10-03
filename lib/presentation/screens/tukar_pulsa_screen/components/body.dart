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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pilih Operator",
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
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "No Handphone",
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
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Text(
              "Pulsa Tersedia",
              style: text3(neutral500, bold),
            ),
          ),
          const BuildPricePoinGrid()
        ],
      ),
    );
  }
}
