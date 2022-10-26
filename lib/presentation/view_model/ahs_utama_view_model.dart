import 'package:flutter/material.dart';

import '../../data/model/ahs_utama_model.dart';
import '../../data/model/pekerjaan_utama_model.dart';
import '../../data/source/ahs_utama_source.dart';
import '../../data/source/pekerjaan_utama_source.dart';

class AHSUtamaViewModel extends ChangeNotifier {
  List<List<AHSUtamaModel>>? _dataAHSUtama;
  List<List<AHSUtamaModel>>? get dataAHSUtama => _dataAHSUtama;

  List<PekerjaanUtamaModel>? _dataPekerjaanUtama;
  List<PekerjaanUtamaModel>? get dataPekerjaanUtama => _dataPekerjaanUtama;

  List<PekerjaanUtamaModel>? _dataPekerjaanUtamaTemp;
  List<PekerjaanUtamaModel>? get dataPekerjaanUtamaTemp =>
      _dataPekerjaanUtamaTemp;

  Future getDatasPekerjaan() async {
    try {
      await PekerjaanUtamaSource().getDatas().then((value) {
        if (value != null) _dataPekerjaanUtama = value;
      });
      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  Future getDatasAHS(String id) async {
    try {
      await AHSUtamaSource().getDatasByIdPekerjaan(id).then((value) {
        if (value != null) {
          final data = value;
          final List<AHSUtamaModel> dataA =
              data.where((element) => element.kategori == "A").toList();
          final List<AHSUtamaModel> dataB =
              data.where((element) => element.kategori == "B").toList();
          final List<AHSUtamaModel> dataC =
              data.where((element) => element.kategori == "C").toList();

          _dataAHSUtama = [dataA, dataB, dataC];
        }
      });
      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  Future updateData(int start, int length, {bool isRestart = false}) async {
    if (isRestart == true) {
      _dataPekerjaanUtamaTemp!.clear();
    }

    if (_dataPekerjaanUtama != null && _dataPekerjaanUtama!.length > length) {
      for (var i = length - 10; i < length; i++) {
        if (_dataPekerjaanUtamaTemp != null) {
          _dataPekerjaanUtamaTemp!.add(_dataPekerjaanUtama![i]);
        } else {
          _dataPekerjaanUtamaTemp = [_dataPekerjaanUtama![i]];
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
      await PekerjaanUtamaSource().getDatasBySumber(sumber).then((value) {
        if (value != null) _dataPekerjaanUtama = value;
      });
      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  Future searchData(String data) async {
    try {
      final dataPekerjaan = _dataPekerjaanUtama!
          .where((element) =>
              element.namaPekerjaan.toLowerCase().contains(data.toLowerCase()))
          .toList();
      _dataPekerjaanUtamaTemp = dataPekerjaan;
      notifyListeners();
    } catch (error) {
      return error;
    }
  }
}
