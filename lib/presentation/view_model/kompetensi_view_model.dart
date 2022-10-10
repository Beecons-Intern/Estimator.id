import 'package:flutter/material.dart';

import '../../data/model/kompetensi_model.dart';
import '../../data/source/kompetensi_source.dart';

class KompetensiViewModel extends ChangeNotifier {
  int? _idPengguna;

  void updateData(uid) {
    _idPengguna = uid;
    notifyListeners();
  }

  List<KompetensiModel>? _datasKompetensi;
  List<KompetensiModel>? get datasKompetensi => _datasKompetensi;

  List<KompetensiModel> _newDatas = [];
  List<KompetensiModel> get newDatas => _newDatas;

  List<KompetensiModel> _deleteDatas = [];
  List<KompetensiModel> get deleteDatas => _deleteDatas;

  Future getDatas() async {
    try {
      await KompetensiSource().getDatas(_idPengguna).then((value) {
        if (value != null) _datasKompetensi = value;
      });
      notifyListeners();
    } catch (e) {
      return e;
    }
  }

  Future insertData() async {
    try {
      if (_newDatas.isNotEmpty) {
        for (var element in _newDatas) {
          await KompetensiSource().addData(element);
        }
        _newDatas.clear();
      }

      notifyListeners();
    } catch (e) {
      return e;
    }
  }

  Future deleteData() async {
    try {
      if (_deleteDatas.isNotEmpty) {
        for (var element in _deleteDatas) {
          if (element.idKompetensi != null) {
            await KompetensiSource().delete(element.idKompetensi!);
          }
        }
        _deleteDatas.clear();
      }

      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  void addItem(KompetensiModel kompetensi) {
    if (_datasKompetensi != null &&
        _datasKompetensi!.contains(kompetensi) &&
        _newDatas.contains(kompetensi)) {
      _newDatas.remove(kompetensi);
      _datasKompetensi!.remove(kompetensi);
    } else {
      _newDatas.add(kompetensi);
      print(_newDatas);
      if (_datasKompetensi != null) {
        _datasKompetensi!.add(kompetensi);
      } else {
        _datasKompetensi = [kompetensi];
      }
    }

    notifyListeners();
  }

  void removeItem(KompetensiModel kompetensi) {
    _deleteDatas.add(kompetensi);
    _datasKompetensi!.remove(kompetensi);
    _newDatas.remove(kompetensi);
    notifyListeners();
  }
}
