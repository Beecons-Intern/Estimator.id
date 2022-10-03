import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'components/body.dart';
import '../../widgets/widgets.dart';
import '../../../../utilities/utilities.dart';

class KategoriBaruScreen extends StatelessWidget {
  const KategoriBaruScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: neutral100,
            )),
        title: Text(
          "Kategori Pekerjaan",
          style: text1(neutral100, bold),
        ),
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
          ontap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Kategori baru",
                      style: text3(neutral500, regular),
                    ),
                    FormBuilderTextField(
                      style: text3(neutral500, regular),
                      name: "nama_kategori",
                      cursorColor: primary,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: const EdgeInsets.fromLTRB(0, 10, 12, 5),
                        hintText: "nama kategori",
                        hintStyle: text3(neutral200, regular),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: primary, width: 2),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(width: 2, color: neutral200),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    RoundedButton(
                      ontap: () {},
                      text: "Simpan",
                    )
                  ],
                ),
              ),
            );
          },
          text: "Tambah Kategori",
        ),
      ),
      body: const Body(),
    );
  }
}
