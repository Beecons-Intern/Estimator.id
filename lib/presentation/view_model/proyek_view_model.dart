import 'package:flutter/material.dart';

import '../../data/model/pelaksana_proyek_mode.dart';
import '../../data/model/proyek_model.dart';
import '../../data/model/wilayah_model.dart';
import '../../data/source/proyek_source.dart';
import '../../data/source/wilayah_source.dart';

class ProyekViewModel extends ChangeNotifier {
  int? _idPengguna;

  void updateData(uid) {
    _idPengguna = uid;
    notifyListeners();
  }

  List<ProyekModel>? _datasProyek;
  List<ProyekModel>? get datasProyek => _datasProyek;

  List<PelaksanaProyekModel>? _datasPelaksanaProyek;
  List<PelaksanaProyekModel>? get datasPelaksanaProyek => _datasPelaksanaProyek;

  List<ProyekModel>? _datasProyekUser;
  List<ProyekModel>? get datasProyekUser => _datasProyekUser;

  List<ProyekModel>? _datasProyekUserTemp;
  List<ProyekModel>? get datasProyekUserTemp => _datasProyekUserTemp;

  List<WilayahModel>? _allWilayahData;
  List<WilayahModel>? get allWilayahData => _allWilayahData;

  void setDataPelaksana(List<PelaksanaProyekModel> pelaksana) {
    _datasPelaksanaProyek = pelaksana;
    notifyListeners();
  }

  // void setDataBaru(PelaksanaProyekModel pelaksana, ProyekModel proyek) {
  //   print(proyek.idProyek);
  //   if (_datasPelaksanaProyek != null) {
  //     _datasPelaksanaProyek!.add(pelaksana);
  //   } else {
  //     _datasPelaksanaProyek = [pelaksana];
  //   }

  //   if (_datasProyek != null) {
  //     _datasProyek!.add(proyek);
  //   } else {
  //     _datasProyek = [proyek];
  //   }

  //   notifyListeners();
  // }

  Future getDatas() async {
    try {
      await ProyekSource().getDatas().then((value) {
        if (value != null) _datasProyek = value;
      });
      notifyListeners();
    } catch (e) {
      return e;
    }
  }

  Future getWilayah(String id) async {
    try {
      await WilayahSource().getData(id).then((value) {
        if (value != null) {
          if (_allWilayahData != null) {
            _allWilayahData!.add(value);
          } else {
            _allWilayahData = [value];
          }
        }
      });

      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  void filterData() {
    if (_datasProyekUser != null) {
      _datasProyekUser!.clear();
    }

    if (_datasPelaksanaProyek != null && _datasProyek != null) {
      for (var pelaksana in _datasPelaksanaProyek!) {
        for (var proyek in _datasProyek!) {
          if (pelaksana.idProyek == proyek.idProyek) {
            if (_datasProyekUser != null) {
              _datasProyekUser!.add(proyek);
            } else {
              _datasProyekUser = [proyek];
            }
          }
        }
      }
    }

    if (_datasProyekUser != null) {
      _datasProyekUserTemp = _datasProyekUser;
    }

    notifyListeners();
  }

  Future<void> getWilayahNama() async {
    if (_allWilayahData != null) {
      _allWilayahData = null;
    }

    if (_datasProyekUser != null) {
      for (var proyek in _datasProyekUser!) {
        await getWilayah(proyek.idWilayah);
      }
    }

    notifyListeners();
  }

  Future searchData(String? data) async {
    try {
      if (data != null && data != "") {
        final dataProyek = _datasProyekUser!
            .where((element) =>
                element.namaProyek.toLowerCase().contains(data.toLowerCase()))
            .toList();
        _datasProyekUserTemp = dataProyek;
      } else {
        _datasProyekUserTemp = _datasProyekUser;
      }
      notifyListeners();
    } catch (error) {
      return error;
    }
  }
}
