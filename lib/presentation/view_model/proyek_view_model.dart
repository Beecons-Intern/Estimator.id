import 'package:estimator_id/data/source/pelaksana_proyek_source.dart';
import 'package:flutter/material.dart';

import '../../data/model/proyek_model.dart';
import '../../data/source/proyek_source.dart';

class ProyekViewModel extends ChangeNotifier {
  int? _idPengguna;

  void updateData(uid) {
    _idPengguna = uid;
    notifyListeners();
  }

  List<ProyekModel>? _datasProyek;
  List<ProyekModel>? get datasProyek => _datasProyek;

  List<PelaksanaProyekSource>? _datasPelaksanaProyek;
  List<PelaksanaProyekSource>? get datasPelaksanaProyek =>
      _datasPelaksanaProyek;

  Future getDatas() async {
    try {
      await ProyekSource().getDatasByPengguna(_idPengguna).then((value) {
        if (value != null) _datasProyek = value;
      });
      notifyListeners();
    } catch (e) {
      return e;
    }
  }
}
