import 'package:flutter/material.dart';

import '../../data/model/upah_utama_model.dart';
import '../../data/source/upah_utama_source.dart';

class UpahUtamaViewModel extends ChangeNotifier {
  List<UpahUtamaModel>? _dataUpahUtama;
  List<UpahUtamaModel>? get dataUpahUtama => _dataUpahUtama;

  List<UpahUtamaModel>? _dataUpahUtamaTemp;
  List<UpahUtamaModel>? get dataUpahUtamaTemp => _dataUpahUtamaTemp;

  bool isSearching = false;

  Future getDatas() async {
    try {
      await UpahUtamaSource().getDatas().then((value) {
        if (value != null) _dataUpahUtama = value;
      });
      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  Future updateData(int start, int length, {bool isRestart = false}) async {
    if (isRestart == true) {
      _dataUpahUtamaTemp!.clear();
    }

    if (_dataUpahUtama != null && _dataUpahUtama!.length > length) {
      for (var i = length - 10; i < length; i++) {
        if (_dataUpahUtamaTemp != null) {
          _dataUpahUtamaTemp!.add(_dataUpahUtama![i]);
        } else {
          _dataUpahUtamaTemp = [_dataUpahUtama![i]];
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
      await UpahUtamaSource().getDatasBySumber(sumber).then((value) {
        if (value != null) _dataUpahUtama = value;
      });
      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  Future searchData(String? data) async {
    try {
      if (data != null && data != "") {
        final dataUpah = _dataUpahUtama!
            .where((element) => element.namaUpah
                .toLowerCase()
                .contains(data.toLowerCase()))
            .toList();
        _dataUpahUtamaTemp = dataUpah;
        isSearching = true;
      } else {
        _dataUpahUtamaTemp = _dataUpahUtama;
        isSearching = false;
      }
      notifyListeners();
    } catch (error) {
      return error;
    }
  }
}
