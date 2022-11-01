import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../utilities/utilities.dart';
import '../../../view_model/rating_pengguna_view_model.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.ratingPenggunaViewModel});
  final RatingPenggunaViewModel ratingPenggunaViewModel;
  static final _formKey = GlobalKey<FormBuilderState>();

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
          "Berikan penilaian Anda terhadap keseluruhan fitur Estimator.id",
          style: text3(neutral500, semibold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 16,
        ),
        RatingBar(
            minRating: 0,
            maxRating: 5,
            initialRating: ratingPenggunaViewModel.dataRatingPengguna != null
                ? double.parse(
                    "${ratingPenggunaViewModel.dataRatingPengguna!.rating}.0")
                : 0,
            allowHalfRating: false,
            itemCount: 5,
            itemSize: 48,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            ratingWidget: RatingWidget(
                full: SvgPicture.asset("assets/icon/star_active.svg"),
                half: SvgPicture.asset("assets/icon/star_active.svg"),
                empty: SvgPicture.asset("assets/icon/star_disactive.svg")),
            onRatingUpdate: (rating) {
              ratingPenggunaViewModel.rating = rating.toString()[0];
            }),
        const SizedBox(
          height: 42,
        ),
        Text(
          "Bagaimana usalan Anda saat menggunakan Estimator.id?",
          style: text3(neutral500, regular),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 16,
        ),
        FormBuilder(
            key: _formKey,
            child: FormBuilderTextField(
              initialValue: ratingPenggunaViewModel.dataRatingPengguna != null
                  ? ratingPenggunaViewModel.dataRatingPengguna!.tanggapan
                  : null,
              maxLines: 5,
              name: "ulasan",
              cursorColor: primary,
              onChanged: (value) {
                if (value != null) ratingPenggunaViewModel.tanggapan = value;
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
            )),
      ]),
    );
  }
}
