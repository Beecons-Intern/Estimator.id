import 'package:flutter/material.dart';
import '../../data/model/dokumen_model.dart';
import '../../data/model/proyek_model.dart';
import '../../data/model/wilayah_model.dart';
import '../../data/source/dokumen_source.dart';

class ProfileProyekViewModel extends ChangeNotifier {
  ProyekModel? _dataProyek;
  ProyekModel? get dataProyek => _dataProyek;

  WilayahModel? _dataWilayah;
  WilayahModel? get dataWilayah => _dataWilayah;

  List<DokumenModel>? _dataDokumen;
  List<DokumenModel>? get dataDokumen => _dataDokumen;

  set proyekSet(ProyekModel proyek) {
    _dataProyek = proyek;
    getDokumen();
    notifyListeners();
  }

  set wilayahSet(WilayahModel wilayah) {
    _dataWilayah = wilayah;
    notifyListeners();
  }

  Future getDokumen() async {
    try {
      await DokumenSource().getDatas(_dataProyek!.idProyek).then((value) {
        _dataDokumen = value;
      });
      notifyListeners();
    } catch (error) {
      return error;
    }
  }
}
