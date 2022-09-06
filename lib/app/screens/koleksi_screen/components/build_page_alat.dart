import 'package:flutter/material.dart';

import 'build_group_option.dart';
import 'build_group_sorting.dart';
import 'build_list_view.dart';

class BuildPageAlat extends StatelessWidget {
  const BuildPageAlat({
    Key? key,
    required this.size,
    required this.analisa,
  }) : super(key: key);

  final Size size;
  final int? analisa;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          BuildGroupSorting(size: size, sortings: const [
            "Nama Alat",
            "Satuan",
            "Harga Dasar",
            "Merk",
            "Spesifikasi",
            "Sumber"
          ]),
          const SizedBox(
            height: 10,
          ),
          BuildGroupOption(
              size: size,
              options: const ["Semua", "SHBJ", "IKK BPS", "Estimator.id"]),
          const SizedBox(
            height: 20,
          ),
          BuildListView(size: size, analisa: analisa),
        ],
      ),
    );
  }
}