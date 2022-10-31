import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';

import '../../../../utilities/utilities.dart';
import '../../../view_model/profile_proyek_view_model.dart';
import '../../../view_model/wilayah_view_model.dart';

class BuildBottomSheetWilayah extends StatelessWidget {
  BuildBottomSheetWilayah(
      {Key? key,
      required this.size,
      required this.profileProyekViewModel,
      required this.wilayahViewModel})
      : super(key: key);

  final Size size;
  final ProfileProyekViewModel profileProyekViewModel;
  final WilayahViewModel wilayahViewModel;
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(size.width * 0.05,
              AppBar().preferredSize.height - 10, size.width * 0.05, 16),
          color: primary,
          child: FormBuilder(
            key: _formKey,
            child: FormBuilderTextField(
              onSubmitted: (String? value) {
                wilayahViewModel.searchData(value!);
              },
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
        ),
        Expanded(
          child: FutureBuilder(
              future: wilayahViewModel.getAllWilayah(),
              builder: ((context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Align(
                    alignment: Alignment.center,
                    child: CircularProgressIndicator(),
                  );
                }

                return Consumer<WilayahViewModel>(
                    builder: (context, wilayah, child) => ListView.separated(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => wilayah
                                    .allWilayahDataTemp![index].idWilayah ==
                                wilayah.allWilayahDataTemp![index].idProv
                            ? Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.05),
                                child: Text(
                                  wilayah.allWilayahDataTemp![index].wilayah,
                                  style: text3(neutral500, medium),
                                ),
                              )
                            : GestureDetector(
                                onTap: () {
                                  wilayah
                                      .changeWilayah(
                                          wilayah.allWilayahDataTemp![index])
                                      .then((value) {
                                    profileProyekViewModel.idWilayah = wilayah
                                        .allWilayahDataTemp![index].idWilayah;
                                    Navigator.pop(context);
                                  });
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.07),
                                  child: Text(
                                    wilayah.allWilayahDataTemp![index].wilayah,
                                    style: text3(neutral500, light),
                                  ),
                                ),
                              ),
                        separatorBuilder: (context, index) => const Divider(),
                        itemCount: wilayah.allWilayahDataTemp!.length));
              })),
        )
      ],
    );
  }
}
