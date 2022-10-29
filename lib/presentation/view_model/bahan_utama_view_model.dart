import 'package:flutter/material.dart';

import '../../data/model/bahan_utama_model.dart';
import '../../data/model/produk_model.dart';
import '../../data/source/bahan_utama_source.dart';
import '../../data/source/produk_source.dart';

class BahanUtamaViewModel extends ChangeNotifier {
  List<BahanUtamaModel>? _dataBahanUtama;
  List<BahanUtamaModel>? get dataBahanUtama => _dataBahanUtama;

  List<BahanUtamaModel>? _dataBahanUtamaTemp;
  List<BahanUtamaModel>? get dataBahanUtamaTemp => _dataBahanUtamaTemp;

  List<ProdukModel>? _dataProduk;
  List<ProdukModel>? get dataProduk => _dataProduk;

  List<ProdukModel>? _dataProdukTemp;
  List<ProdukModel>? get dataProdukTemp => _dataProdukTemp;

  Future getDatas() async {
    try {
      await BahanUtamaSource().getDatas().then((value) {
        if (value != null) _dataBahanUtama = value;
      });
      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  Future getDatasProduk() async {
    try {
      await ProdukSource().getDatas().then((value) {
        if (value != null) _dataProduk = value;
      });
      notifyListeners();
      print(_dataProduk);
    } catch (error) {
      return error;
    }
  }

  Future updateData(int start, int length, {bool isRestart = false}) async {
    if (isRestart == true) {
      _dataBahanUtamaTemp!.clear();
    }

    if (_dataBahanUtama != null && _dataBahanUtama!.length > length) {
      for (var i = length - 10; i < length; i++) {
        if (_dataBahanUtamaTemp != null) {
          _dataBahanUtamaTemp!.add(_dataBahanUtama![i]);
        } else {
          _dataBahanUtamaTemp = [_dataBahanUtama![i]];
        }
      }
      notifyListeners();
      return true;
    } else {
      notifyListeners();
      return false;
    }
  }

  Future updateDataProduk(int start, int length,
      {bool isRestart = false}) async {
    if (isRestart == true) {
      _dataProdukTemp!.clear();
    }

    if (_dataProduk != null && _dataProduk!.length > length) {
      for (var i = length - 10; i < length; i++) {
        if (_dataProdukTemp != null) {
          _dataProdukTemp!.add(_dataProduk![i]);
        } else {
          _dataProdukTemp = [_dataProduk![i]];
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
      await BahanUtamaSource().getDatasBySumber(sumber).then((value) {
        if (value != null) _dataBahanUtama = value;
      });
      notifyListeners();
    } catch (error) {
      return error;
    }
  }
}
