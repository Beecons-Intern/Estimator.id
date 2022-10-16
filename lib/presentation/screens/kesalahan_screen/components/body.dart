import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../../utilities/utilities.dart';
import '../../../view_model/kesalahan_view_model.dart';

class Body extends StatelessWidget {
  Body({super.key, required this.kesalahanViewModel});
  final KesalahanViewModel kesalahanViewModel;
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(children: [
        const SizedBox(
          height: 24,
        ),
        Text(
          "Apa kesalahan (bug) yang Anda temukan di Estimator.id?",
          style: text3(neutral500, regular),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 16,
        ),
        FormBuilder(
          key: _formKey,
          child: FormBuilderTextField(
            initialValue: kesalahanViewModel.dataKesalahan != null
                ? kesalahanViewModel.dataKesalahan!.bug
                : null,
            maxLines: 5,
            name: "kesalahan",
            cursorColor: primary,
            onChanged: (value) {
              if (value != null) kesalahanViewModel.bug = value;
            },
            decoration: InputDecoration(
              hintStyle: text3(primary, regular),
              isDense: true,
              contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: primary),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: neutral200),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
          ),
        ),
      ]),
    );
  }
}
