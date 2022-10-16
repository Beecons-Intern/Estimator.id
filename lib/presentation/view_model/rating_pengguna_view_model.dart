import 'package:flutter/material.dart';

import '../../data/model/rating_pengguna_model.dart';
import '../../data/source/rating_pengguna_source.dart';
import '../../utilities/strings.dart';

class RatingPenggunaViewModel extends ChangeNotifier {
  int? _idPengguna;
  String? rating;
  String? tanggapan;

  void updateData(uid) {
    _idPengguna = uid;
    notifyListeners();
  }

  RatingPenggunaModel? _dataRatingPengguna;
  RatingPenggunaModel? get dataRatingPengguna => _dataRatingPengguna;

  Future getRating() async {
    try {
      await RatingPenggunaSource().getData(_idPengguna).then((value) {
        if (value != null) _dataRatingPengguna = value;
      });
      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  Future insertRating() async {
    try {
      RatingPenggunaModel dataRating = RatingPenggunaModel(
          idPengguna: _idPengguna!,
          rating: rating != null ? rating! : "0",
          tanggapan: tanggapan ?? "",
          tglDibuat: tglDibuat,
          jamDibuat: jamDibuat);

      if (rating != "0" && tanggapan != null && tanggapan != "") {
        await RatingPenggunaSource().addData(dataRating).then((value) {
          _dataRatingPengguna = value;
        });
        notifyListeners();
        return true;
      }

      return false;
    } catch (error) {
      return error;
    }
  }

  Future updateRating() async {
    try {
      RatingPenggunaModel dataRating = RatingPenggunaModel(
          idRating: dataRatingPengguna!.idRating,
          idPengguna: _idPengguna!,
          rating: rating ?? dataRatingPengguna!.rating,
          tanggapan: tanggapan ?? dataRatingPengguna!.tanggapan,
          tglDibuat: tglDibuat,
          jamDibuat: jamDibuat);

      if (rating != "0" && tanggapan != null && tanggapan != "") {
        await RatingPenggunaSource().updateData(dataRating).then((value) {
          if (value != 0) _dataRatingPengguna = dataRating;
        });
        notifyListeners();
        return true;
      }

      return false;
    } catch (error) {
      return error;
    }
  }
}
