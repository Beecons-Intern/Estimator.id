import 'package:flutter/material.dart';

import '../../data/model/kesalahan_model.dart';
import '../../data/source/kesalahan_source.dart';
import '../../utilities/strings.dart';

class KesalahanViewModel extends ChangeNotifier {
  int? _idPengguna;
  String? bug;

  void updateData(uid) {
    _idPengguna = uid;
    notifyListeners();
  }

  KesalahanModel? _dataKesalahan;
  KesalahanModel? get dataKesalahan => _dataKesalahan;

  Future getKesalahan() async {
    try {
      await KesalahanSource().getData(_idPengguna).then((value) {
        if (value != null) _dataKesalahan = value;
      });
      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  Future insertKesalahan() async {
    try {
      KesalahanModel dataKesalahan = KesalahanModel(
          idPengguna: _idPengguna!,
          bug: bug ?? "",
          tglDibuat: tglDibuat,
          jamDibuat: jamDibuat);

      if (bug != null && bug != "") {
        await KesalahanSource().addData(dataKesalahan).then((value) {
          _dataKesalahan = value;
        });
        notifyListeners();
        return true;
      }

      return false;
    } catch (error) {
      return error;
    }
  }

  Future updateKesalahan() async {
    try {
      KesalahanModel data = KesalahanModel(
          idBugs: dataKesalahan!.idBugs,
          idPengguna: _idPengguna!,
          bug: bug ?? dataKesalahan!.bug,
          tglDibuat: tglDibuat,
          jamDibuat: jamDibuat);

      if (bug != null && bug != "") {
        await KesalahanSource().updateData(data).then((value) {
          if (value != 0) _dataKesalahan = data;
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
