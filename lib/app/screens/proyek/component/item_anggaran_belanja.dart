import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class ItemAnggaranBelanja extends StatelessWidget {
  final String namaAnggaran;
  final String harga;
  final String persen;

  const ItemAnggaranBelanja({
    Key? key,
    required this.namaAnggaran,
    required this.harga,
    required this.persen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Text(
          namaAnggaran,
          style: text3(neutral500, regular),
        )),
        Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    decoration: BoxDecoration(
                        border: Border.all(color: primary, width: 1),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        harga,
                        style: text3(neutral500, regular),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    decoration: BoxDecoration(
                        border: Border.all(color: primary, width: 1),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        persen,
                        style: text3(neutral500, regular),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ],
    );
  }
}
