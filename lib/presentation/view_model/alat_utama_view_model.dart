import 'package:flutter/material.dart';

import '../../data/model/alat_utama_model.dart';
import '../../data/source/alat_utama_source.dart';

class AlatUtamaViewModel extends ChangeNotifier {
  List<AlatUtamaModel>? _dataAlatUtama;
  List<AlatUtamaModel>? get dataAlatUtama => _dataAlatUtama;

  List<AlatUtamaModel>? _dataAlatUtamaTemp;
  List<AlatUtamaModel>? get dataAlatUtamaTemp => _dataAlatUtamaTemp;

  bool isSearching = false;

  Future getDatas() async {
    try {
      await AlatUtamaSource().getDatas().then((value) {
        if (value != null) _dataAlatUtama = value;
      });
      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  Future updateData(int start, int length, {bool isRestart = false}) async {
    if (isRestart == true) {
      _dataAlatUtamaTemp!.clear();
    }

    if (_dataAlatUtama != null && _dataAlatUtama!.length > length) {
      for (var i = length - 10; i < length; i++) {
        if (_dataAlatUtamaTemp != null) {
          _dataAlatUtamaTemp!.add(_dataAlatUtama![i]);
        } else {
          _dataAlatUtamaTemp = [_dataAlatUtama![i]];
        }
      }
      notifyListeners();
      return true;
    } else {
      notifyListeners();
      return false;
    }
  }

  Future filterData(int sumber) async {
    try {
      await AlatUtamaSource().getDatasBySumber(sumber).then((value) {
        if (value != null) _dataAlatUtama = value;
      });
      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  Future searchData(String? data) async {
    try {
      if (data != null && data != "") {
        final dataAlat = _dataAlatUtama!
            .where((element) => element.namaAlat
                .toLowerCase()
                .contains(data.toLowerCase()))
            .toList();
        _dataAlatUtamaTemp = dataAlat;
        isSearching = true;
      } else {
        _dataAlatUtamaTemp = _dataAlatUtama;
        isSearching = false;
      }
      notifyListeners();
    } catch (error) {
      return error;
    }
  }
}
