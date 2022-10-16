import 'package:flutter/material.dart';

import '../../data/model/dokumen_model.dart';
import '../../data/model/proyek_model.dart';
import '../../data/model/wilayah_model.dart';
import '../../data/source/dokumen_source.dart';
import '../../data/source/proyek_source.dart';
import '../../data/source/wilayah_source.dart';

class ProfileProyekViewModel extends ChangeNotifier {
  ProyekModel? _dataProyek;
  ProyekModel? get dataProyek => _dataProyek;

  void setDataProyek(ProyekModel values) {
    _dataProyek = values;
  }

  WilayahModel? _wilayahData;
  WilayahModel? get wilayahData => _wilayahData;

  List<WilayahModel>? _allWilayahData;
  List<WilayahModel>? get allWilayahData => _allWilayahData;

  List<DokumenModel>? _datasDokumen;
  List<DokumenModel>? get datasDokumen => _datasDokumen;

  List<DokumenModel> _deleteDatasDokumen = [];
  List<DokumenModel> get deleteDatasDokumen => _deleteDatasDokumen;

  Future getWilayahProyek() async {
    try {
      if (_dataProyek != null && _dataProyek!.idWilayah != "") {
        await WilayahSource()
            .getData(_dataProyek!.idWilayah)
            .then((value) => _wilayahData = value);
      }
      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  Future changeWilayah(WilayahModel data) async {
    try {
      _dataProyek!.idWilayah = data.idWilayah;
      _wilayahData = data;
      notifyListeners();
    } catch (e) {
      return e;
    }
  }

  Future getAllWilayah() async {
    _allWilayahData = null;
    try {
      final dataAllWilayah = await WilayahSource().getAll();
      _allWilayahData = dataAllWilayah;
      notifyListeners();
    } catch (e) {
      return e;
    }
  }

  Future insertData(ProyekModel values) async {
    try {
      final data = await ProyekSource().addData(values);
      _dataProyek = data;
      notifyListeners();
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future insertDokumen() async {
    try {
      if (_datasDokumen != null && _datasDokumen!.isNotEmpty) {
        for (var element in _datasDokumen!) {
          element.idProyek = _dataProyek!.idProyek!;

          if (element.idDokumen == null) {
            await DokumenSource()
                .addData(element)
                .then((value) => element = value);
          }
        }
      }
      notifyListeners();
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future deleteDokumen() async {
    try {
      if (_deleteDatasDokumen.isNotEmpty) {
        for (var element in _deleteDatasDokumen) {
          await DokumenSource().delete(element.idDokumen!);
        }
      }
      notifyListeners();
    } catch (error) {
      print(error);
      return error;
    }
  }

  Future saveProfileProyek(ProyekModel values) async {
    await insertData(values);
    await insertDokumen();
    await deleteDokumen();
  }

  void addItem(DokumenModel dokumen) {
    DokumenModel? temp;
    if (_datasDokumen != null) {
      _datasDokumen!.map(
          (item) => item.dokumen == dokumen.dokumen ? null : temp = dokumen);
    } else {
      temp = dokumen;
    }

    if (temp != null) {
      _datasDokumen == null
          ? _datasDokumen = [dokumen]
          : _datasDokumen!.add(dokumen);
    }

    notifyListeners();
  }

  void removeItem(DokumenModel dokumen) {
    if (_datasDokumen != null) {
      for (var element in _datasDokumen!) {
        if (element.dokumen == dokumen.dokumen) {
          if (element.idDokumen != null) {
            _deleteDatasDokumen.add(dokumen);
            _datasDokumen!.length == 1
                ? _datasDokumen = null
                : _datasDokumen!.remove(dokumen);
          } else {
            _datasDokumen!.length <= 1
                ? _datasDokumen = null
                : _datasDokumen!.remove(dokumen);
          }
        }
      }
    }

    notifyListeners();
  }
}
