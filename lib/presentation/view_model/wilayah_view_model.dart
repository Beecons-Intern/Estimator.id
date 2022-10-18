import 'package:flutter/material.dart';

import '../../data/model/wilayah_model.dart';
import '../../data/source/wilayah_source.dart';

class WilayahViewModel extends ChangeNotifier {
  WilayahModel? _wilayahData;
  WilayahModel? get wilayahData => _wilayahData;

  List<WilayahModel>? _allWilayahData;
  List<WilayahModel>? get allWilayahData => _allWilayahData;

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
      notifyListeners();
    } catch (e) {
      return e;
    }
  }
}
