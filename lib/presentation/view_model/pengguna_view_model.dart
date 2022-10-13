import 'package:flutter/material.dart';
import '../../data/model/pengguna_model.dart';
import '../../data/model/wilayah_model.dart';
import '../../data/source/pengguna_source.dart';
import '../../data/source/wilayah_source.dart';

enum PenggunaViewState { none, loading, error }

class PenggunaViewModel extends ChangeNotifier {
  PenggunaViewState _state = PenggunaViewState.none;
  PenggunaViewState get state => _state;

  changeState(PenggunaViewState state) {
    _state = state;
    notifyListeners();
  }

  final int _idPengguna = 110;
  int get idPengguna => _idPengguna;

  PenggunaModel? _dataPengguna;
  PenggunaModel? get dataPengguna => _dataPengguna;

  WilayahModel? _wilayahData;
  WilayahModel? get wilayahData => _wilayahData;

  WilayahModel? _tempWilayahData;
  WilayahModel? get tempWilayahData => _tempWilayahData;

  String? _prov;
  String? get prov => _prov;

  List<WilayahModel>? _allWilayahData;
  List<WilayahModel>? get allWilayahData => _allWilayahData;

  Future getUser() async {
    changeState(PenggunaViewState.loading);
    _dataPengguna = null;

    try {
      await PenggunaSource().getData(idPengguna).then((value) async {
        _dataPengguna = value;
        final dataWilayah = await WilayahSource().getData(value.idWilayah);
        _wilayahData = dataWilayah;
        _tempWilayahData = dataWilayah;
        final dataProv =
            await WilayahSource().getDataProv(_wilayahData!.idProv);
        _prov = dataProv.wilayah;
      });
      notifyListeners();
      changeState(PenggunaViewState.none);
    } catch (e) {
      changeState(PenggunaViewState.error);
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

  Future changeWilayah(WilayahModel data) async {
    try {
      _dataPengguna!.idWilayah = data.idWilayah;
      _tempWilayahData = data;
      notifyListeners();
    } catch (e) {
      return e;
    }
  }

  Future updateData(PenggunaModel pengguna) async {
    try {
      final data = await PenggunaSource().updateData(pengguna);
      notifyListeners();
      return data;
    } catch (e) {
      return e;
    }
  }
}
