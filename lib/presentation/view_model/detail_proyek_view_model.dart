import 'package:flutter/material.dart';

import '../../data/model/ahs_model.dart';
import '../../data/model/harga_satuan_model.dart';
import '../../data/model/kategori_pekerjaan_model.dart';
import '../../data/model/pelaksana_proyek_mode.dart';
import '../../data/model/proyek_model.dart';

class DetailProyekViewModel extends ChangeNotifier {
  ProyekModel? _dataProyek;
  ProyekModel? get dataProyek => _dataProyek;

  PelaksanaProyekModel? _dataPelaksanaProyek;
  PelaksanaProyekModel? get dataPelaksanaProyek => _dataPelaksanaProyek;

  List<KategoriPekerjaanModel>? _datasKategoriPekerjaan;
  List<KategoriPekerjaanModel>? get datasKategoriPekerjaan =>
      _datasKategoriPekerjaan;

  List<List<HargaSatuanModel>>? _datasHargaSatuan;
  List<List<HargaSatuanModel>>? get datasHargaSatuan => _datasHargaSatuan;

  List<AHSModel>? _datasAHS;
  List<AHSModel>? get datasAHS => _datasAHS;

  int? _idPengguna;

  void updateData(uid) {
    _idPengguna = uid;
    notifyListeners();
  }

  void setDataDetaikProyek(
      ProyekModel proyek,
      PelaksanaProyekModel pelaksana,
      List<KategoriPekerjaanModel> kategoriPekerjaan,
      List<HargaSatuanModel> hargaSatuan,
      List<AHSModel> ahs) {
    kategoriPekerjaan.sort((a, b) => a.level.compareTo(b.level));
    _dataProyek = proyek;
    _dataPelaksanaProyek = pelaksana;
    _datasKategoriPekerjaan = kategoriPekerjaan;
    filterHargaSatuan(hargaSatuan);
    _datasAHS = ahs;
  }

  void filterHargaSatuan(List<HargaSatuanModel> hargaSatuan) {
    int lengthKategori = _datasKategoriPekerjaan!.length;
    if (_datasHargaSatuan != null) _datasHargaSatuan = null;

    for (var i = 1; i <= lengthKategori; i++) {
      List<HargaSatuanModel> result = hargaSatuan.where((element) {
        return element.level[0] == i.toString() &&
            '.'.allMatches(element.level).length == 1;
      }).toList();
      result.sort((a, b) {
        int endFirst = a.level.length;
        int endSecond = b.level.length;
        int startFirst = a.level.indexOf(".");
        int startSecond = b.level.indexOf(".");
        return int.parse(a.level.substring(startFirst + 1, endFirst)).compareTo(
            int.parse(b.level.substring(startSecond + 1, endSecond)));
      });
      _datasHargaSatuan != null && _datasHargaSatuan!.isNotEmpty
          ? _datasHargaSatuan!.add(result)
          : _datasHargaSatuan = [result];
    }
  }
}
