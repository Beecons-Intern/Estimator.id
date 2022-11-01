import 'package:flutter/material.dart';

import '../../data/model/wilayah_model.dart';
import '../../data/source/wilayah_source.dart';

class WilayahViewModel extends ChangeNotifier {
  WilayahModel? _wilayahData;
  WilayahModel? get wilayahData => _wilayahData;

  List<WilayahModel>? _allWilayahData;
  List<WilayahModel>? get allWilayahData => _allWilayahData;

  List<WilayahModel>? _allWilayahDataTemp;
  List<WilayahModel>? get allWilayahDataTemp => _allWilayahDataTemp;

  Future getWilayah(String id) async {
    try {
      await WilayahSource().getData(id).then((value) => _wilayahData = value);
      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  Future changeWilayah(WilayahModel data) async {
    try {
      _wilayahData = data;
      notifyListeners();
      return data.idWilayah;
    } catch (error) {
      return error;
    }
  }

  Future getAllWilayah() async {
    _allWilayahData = null;
    try {
      final dataAllWilayah = await WilayahSource().getAll();
      _allWilayahData = dataAllWilayah;
      _allWilayahDataTemp = dataAllWilayah;
      notifyListeners();
    } catch (e) {
      return e;
    }
  }

  Future searchData(String? data) async {
    try {
      if (data != null && data != "") {
        final dataWilayah = _allWilayahData!
            .where((element) =>
                element.wilayah.toLowerCase().contains(data.toLowerCase()))
            .toList();
        _allWilayahDataTemp = dataWilayah;
      } else {
        _allWilayahDataTemp = _allWilayahData;
      }
      notifyListeners();
    } catch (error) {
      return error;
    }
  }
}
