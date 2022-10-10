import 'package:estimator_id/data/model/kompetensi_model.dart';
import 'package:estimator_id/presentation/view_model/kompetensi_view_model.dart';
import 'package:flutter/material.dart';

import '../../../../utilities/utilities.dart';
import '../../../view_model/pengguna_view_model.dart';

class BuildItemKompetensi extends StatefulWidget {
  const BuildItemKompetensi(
      {super.key,
      required this.text,
      required this.kompetensiViewModel,
      required this.penggunaViewModel});
  final String text;
  final KompetensiViewModel kompetensiViewModel;
  final PenggunaViewModel penggunaViewModel;

  @override
  State<BuildItemKompetensi> createState() => _BuildItemKompetensiState();
}

class _BuildItemKompetensiState extends State<BuildItemKompetensi> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isActive = !isActive;
        });
        widget.kompetensiViewModel.addItem(KompetensiModel(
            idPengguna: widget.penggunaViewModel.dataPengguna!.idPengguna!,
            kompetensi: widget.text));
      },
      child: Container(
        margin: const EdgeInsets.only(right: 8, bottom: 8),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        decoration: BoxDecoration(
            color: isActive == true ? accentYellow500 : null,
            border: Border.all(
                color: isActive == true ? Colors.transparent : neutral500),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Text(
          widget.text,
          style: TextStyle(color: isActive == true ? neutral100 : null),
        ),
      ),
    );
  }
}
