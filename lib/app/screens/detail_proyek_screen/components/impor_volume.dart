import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../../widgets/rounded_button.dart';

class ImporVolume extends StatelessWidget {
  const ImporVolume({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        "Impor Volume",
        style: text2(neutral500, semibold),
        textAlign: TextAlign.center,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              text: "belum memiliki template?",
              style: text4(neutral500, regular),
              children: [
                TextSpan(
                  text: " unduh template",
                  style: text4(primary, regular),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          DottedBorder(
            borderType: BorderType.RRect,
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.15,
                vertical: size.height * 0.1),
            child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 2, vertical: 5),
              decoration: BoxDecoration(
                  border: Border.all(
                color: primary,
              )),
              child: Text(
                "Unggah template volume",
                textAlign: TextAlign.center,
                style: text4(neutral500, regular),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Jika anda melakukan impor, seluruh rincian volume pekerjaan yang telah dimasukan sebelumnya akan terhapus dan digantikan dengan volume dari file template.",
            style: text4(neutral500, regular),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Peringatan! Pastikan Andan telah melakukan backup rincian volume sebelumnya!",
                  style: text4(accentOrange500, regular),
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
          const SizedBox(height: 16),
          RoundedButton(
            ontap: () {},
            text: "Impor Volume",
          )
        ],
      ),
    );
  }
}