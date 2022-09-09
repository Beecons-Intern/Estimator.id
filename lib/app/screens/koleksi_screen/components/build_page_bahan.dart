import 'package:flutter/material.dart';

import 'build_group_option.dart';
import 'build_group_sorting.dart';
import 'build_list_view.dart';

class BuildPageBahan extends StatelessWidget {
  const BuildPageBahan({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          BuildGroupSorting(size: size, sortings: const [
            "Nama Bahan",
            "Satuan",
            "Harga Dasar",
            "Merk",
            "Spesifikasi",
            "Sumber"
          ]),
          const SizedBox(
            height: 10,
          ),
          BuildGroupOption(size: size, options: const [
            "Semua",
            "Suplier",
            "SHBJ",
            "IKK BPS",
            "Estimator.id"
          ]),
          const SizedBox(
            height: 20,
          ),
          BuildListView(size: size),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
