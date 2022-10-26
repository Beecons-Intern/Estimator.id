import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import '../../../../utilities/utilities.dart';
import '../../../view_model/ahs_utama_view_model.dart';
import 'ahs/build_page_ahs.dart';
import 'alat/build_page_alat.dart';
import 'bahan/build_page_bahan.dart';
import 'upah/build_page_upah.dart';

class Body extends StatelessWidget {
  Body({Key? key, required this.pageActive}) : super(key: key);
  final int pageActive;
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    final ahsUtamaViewModel = Provider.of<AHSUtamaViewModel>(context);
    Size size = MediaQuery.of(context).size;
    List<Widget> pages = [
      BuildPageAHS(
        size: size,
        ahsUtamaViewModel: ahsUtamaViewModel,
      ),
      BuildPageBahan(
        size: size,
      ),
      BuildPageUpah(
        size: size,
      ),
      BuildPageAlat(
        size: size,
      )
    ];
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height * 0.05,
          decoration: const BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16))),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.01,
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                width: size.width,
                height: 42,
                decoration: BoxDecoration(
                    color: neutral100,
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 1,
                          blurRadius: 5,
                          color: const Color(0xFFE6E6E6).withOpacity(0.8),
                          offset: const Offset(0, 5)),
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: FormBuilder(
                  key: _formKey,
                  child: FormBuilderTextField(
                    onSubmitted: (String? value) {
                      switch (pageActive) {
                        case 0:
                        print("0");
                          break;
                        case 1:
                          print("1");
                          break;
                        case 2:
                          print("2");
                          break;
                        case 3:
                          print("3");
                          break;
                        default:
                      }
                    },
                    name: "search",
                    cursorColor: primary,
                    style: text2(neutral500, regular),
                    decoration: InputDecoration(
                      isDense: false,
                      icon: const Icon(
                        Icons.search,
                        color: primary,
                      ),
                      border: InputBorder.none,
                      hintText: "Ketik apa yang kamu ingin cari",
                      hintStyle: text2(neutral200, regular),
                    ),
                  ),
                )),
            Expanded(
              child: pages[pageActive],
            ),
          ],
        )
      ],
    );
  }
}
