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

  int? _idPengguna;

  void setUser(uid) {
    _idPengguna = uid;
    notifyListeners();
  }

  PenggunaModel? _dataPengguna;
  PenggunaModel? get dataPengguna => _dataPengguna;

  WilayahModel? _wilayahData;
  WilayahModel? get wilayahData => _wilayahData;

  WilayahModel? _tempWilayahData;
  WilayahModel? get tempWilayahData => _tempWilayahData;

  void setTempWilayah(WilayahModel wilayah) {
    _tempWilayahData = wilayah;
  }

  String? _prov;
  String? get prov => _prov;

  Future getUser() async {
    changeState(PenggunaViewState.loading);
    _dataPengguna = null;

    try {
      await PenggunaSource().getData(_idPengguna).then((value) async {
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

  Future updateData(
      String nama,
      String username,
      String profil,
      String alamat,
      String wilayah,
      String perusahaan,
      String email,
      String telp,
      String wa,
      String website,
      String password,
      String foto) async {
    try {
      final pengguna = PenggunaModel(
          idPengguna: _dataPengguna!.idPengguna,
          namaPengguna: nama,
          profil: profil,
          alamat: alamat,
          idWilayah: wilayah,
          perusahaan: perusahaan,
          email: email,
          noTelp: telp,
          noWa: wa,
          website: website,
          hargaMin: _dataPengguna!.hargaMin,
          hargaMax: _dataPengguna!.hargaMax,
          nego: _dataPengguna!.nego,
          username: username,
          password: password,
          foto: foto,
          kategoriAkun: _dataPengguna!.kategoriAkun,
          jenisAkun: _dataPengguna!.jenisAkun,
          status: _dataPengguna!.status,
          kodeVerifikasi: _dataPengguna!.kodeVerifikasi,
          statusVerifikasi: _dataPengguna!.statusVerifikasi,
          tglDaftar: _dataPengguna!.tglDaftar,
          jamDaftar: _dataPengguna!.jamDaftar);
      final data = await PenggunaSource().updateData(pengguna);
      if (data == 1) {
        _dataPengguna = pengguna;
        notifyListeners();
        return true;
      }

      return false;
    } catch (e) {
      return e;
    }
  }

  Future updateKompetensi(double hargaMin, double hargaMax) async {
    try {
      final pengguna = PenggunaModel(
          idPengguna: _dataPengguna!.idPengguna,
          namaPengguna: _dataPengguna!.namaPengguna,
          profil: _dataPengguna!.profil,
          alamat: _dataPengguna!.alamat,
          idWilayah: _dataPengguna!.idWilayah,
          perusahaan: _dataPengguna!.perusahaan,
          email: _dataPengguna!.email,
          noTelp: _dataPengguna!.noTelp,
          noWa: _dataPengguna!.noWa,
          website: _dataPengguna!.website,
          hargaMin: hargaMin,
          hargaMax: hargaMax,
          nego: _dataPengguna!.nego,
          username: _dataPengguna!.username,
          password: _dataPengguna!.password,
          foto: _dataPengguna!.foto,
          kategoriAkun: _dataPengguna!.kategoriAkun,
          jenisAkun: _dataPengguna!.jenisAkun,
          status: _dataPengguna!.status,
          kodeVerifikasi: _dataPengguna!.kodeVerifikasi,
          statusVerifikasi: _dataPengguna!.statusVerifikasi,
          tglDaftar: _dataPengguna!.tglDaftar,
          jamDaftar: _dataPengguna!.jamDaftar);
      final data = await PenggunaSource().updateData(pengguna);
      if (data == 1) {
        _dataPengguna = pengguna;
        notifyListeners();
        return true;
      }

      return false;
    } catch (e) {
      return e;
    }
  }
}
