import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../../utilities/utilities.dart';
import '../../../view_model/pengguna_view_model.dart';

class BuildBottomSheetWilayah extends StatelessWidget {
  const BuildBottomSheetWilayah({
    Key? key,
    required this.size,
    required this.penggunaViewModel,
  }) : super(key: key);

  final Size size;
  final PenggunaViewModel penggunaViewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(size.width * 0.05,
              AppBar().preferredSize.height - 10, size.width * 0.05, 16),
          color: primary,
          child: FormBuilderTextField(
            style: body(neutral500, regular),
            textAlign: TextAlign.justify,
            name: "wilayah",
            cursorColor: primary,
            decoration: InputDecoration(
              prefixIcon: Container(
                width: 48,
                height: 48,
                margin: const EdgeInsets.only(right: 20),
                decoration: const BoxDecoration(
                    color: neutral200,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10))),
                child: const Icon(
                  Icons.search,
                  size: 24,
                  color: neutral100,
                ),
              ),
              hintText: "Cari wilayah kota / kabupatan",
              filled: true,
              fillColor: neutral100,
              hintStyle: body(neutral500, regular),
              isDense: true,
              contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: primary, width: 0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: primary, width: 0),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ),
        ),
        Expanded(
          child: FutureBuilder(
              future: penggunaViewModel.getAllWilayah(),
              builder: ((context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Align(
                    alignment: Alignment.center,
                    child: CircularProgressIndicator(),
                  );
                }

                return ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => penggunaViewModel
                                .allWilayahData![index].idWilayah ==
                            penggunaViewModel.allWilayahData![index].idProv
                        ? Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.05),
                            child: Text(
                              penggunaViewModel.allWilayahData![index].wilayah,
                              style: text3(neutral500, medium),
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              penggunaViewModel
                                  .changeWilayah(
                                      penggunaViewModel.allWilayahData![index])
                                  .then((value) => Navigator.pop(context));
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.07),
                              child: Text(
                                penggunaViewModel
                                    .allWilayahData![index].wilayah,
                                style: text3(neutral500, light),
                              ),
                            ),
                          ),
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: penggunaViewModel.allWilayahData!.length);
              })),
        )
      ],
    );
  }
}