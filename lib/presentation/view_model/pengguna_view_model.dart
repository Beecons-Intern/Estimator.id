import 'package:flutter/material.dart';

import '../../data/model/pengalaman_proyek_model.dart';
import '../../data/model/pengguna_model.dart';
import '../../data/model/wilayah_model.dart';
import '../../data/source/pengguna_source.dart';
import '../../data/source/wilayah_source.dart';

enum PenggunaViewState { none, loading, error }

class PenggunaViewModel extends ChangeNotifier {
  PenggunaViewModel() {
    inisialData();
  }

  PenggunaViewState _state = PenggunaViewState.none;
  PenggunaViewState get state => _state;

  changeState(PenggunaViewState state) {
    _state = state;
    notifyListeners();
  }

  PenggunaModel? _data;
  PenggunaModel? get data => _data;

  WilayahModel? _wilayahData;
  WilayahModel? get wilayahData => _wilayahData;

  WilayahModel? _tempWilayahData;
  WilayahModel? get tempWilayahData => _tempWilayahData;

  String? _prov;
  String? get prov => _prov;

  List<WilayahModel>? _allWilayahData;
  List<WilayahModel>? get allWilayahData => _allWilayahData;

  Future inisialData() async {
    changeState(PenggunaViewState.loading);

    try {
      await PenggunaSource().selectById().then((value) async {
        _data = value;
        final dataWilayah =
            await WilayahSource().getWilayahById(value.idWilayah);
        _wilayahData = dataWilayah;
        _tempWilayahData = dataWilayah;
        final dataProv =
            await WilayahSource().getProvById(_wilayahData!.idProv);
        _prov = dataProv;
      });
      notifyListeners();
      changeState(PenggunaViewState.none);
    } catch (e) {
      changeState(PenggunaViewState.error);
    }
  }

  Future getAllWilayah() async {
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
      _data!.idWilayah = data.idWilayah;
      _tempWilayahData = data;
      notifyListeners();
    } catch (e) {
      return e;
    }
  }

  Future updateData(
      {required namaPengguna,
      required profil,
      required alamat,
      required idWilayah,
      required perusahaan,
      required email,
      required noTelp,
      required noWA,
      required website,
      required username}) async {
    try {
      final dataUser = {
        "nama_pengguna": namaPengguna,
        "profil": profil,
        "alamat": alamat,
        "id_wilayah": idWilayah,
        "perusahaan": perusahaan,
        "email": email,
        "no_telp": noTelp,
        "no_wa": noWA,
        "website": website,
        "username": username,
      };
      final data = await PenggunaSource().update(dataUser);
      notifyListeners();
      return data;
    } catch (e) {
      return e;
    }
  }
}
