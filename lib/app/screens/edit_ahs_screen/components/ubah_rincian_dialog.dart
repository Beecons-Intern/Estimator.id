import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../widgets/rounded_button.dart';
import 'build_textfield.dart';
import 'title_text.dart';

class UbahRincianDialog extends StatelessWidget {
  const UbahRincianDialog({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: FormBuilder(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              BuildTextField(
                  size: size,
                  title: "Nama Bahan",
                  initialValue: "Kayu balok 5/7 kelas II",
                  isCurrency: false,
                  name: "nama_bahan"),
              const SizedBox(
                height: 16,
              ),
              BuildTextField(
                  size: size,
                  title: "Koefisien",
                  initialValue: "0,0120",
                  isCurrency: false,
                  name: "koefisien"),
              const SizedBox(
                height: 16,
              ),
              const TitleText(
                title: "Satuan",
                text: "m3",
              ),
              const SizedBox(
                height: 16,
              ),
              BuildTextField(
                size: size,
                title: "Harga Dasar",
                initialValue: "3.999.000",
                isCurrency: true,
                name: "harga_dasar",
              ),
              const SizedBox(
                height: 16,
              ),
              const TitleText(
                title: "Harga Satuan",
                text: "Rp 3.999.000",
              ),
              const SizedBox(
                height: 16,
              ),
              const TitleText(
                title: "Merk",
                text: "Holcim",
              ),
              const SizedBox(
                height: 16,
              ),
              const TitleText(
                title: "Spesifikasi",
                text: "40 kg",
              ),
              const SizedBox(
                height: 24,
              ),
              RoundedButton(
                ontap: () {},
                text: "Perbarui",
              )
            ],
          ),
        ),
      ),
    );
  }
}