import 'package:flutter/material.dart';

import '../../data/model/ahs_model.dart';
import '../../data/model/harga_satuan_model.dart';
import '../../data/model/kategori_pekerjaan_model.dart';
import '../../data/model/pelaksana_proyek_mode.dart';
import '../../data/model/proyek_model.dart';
import '../../data/source/ahs_source.dart';
import '../../data/source/harga_satuan_source.dart';
import '../../data/source/kategori_pekerjaan_source.dart';

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

  List<HargaSatuanModel>? _datasHargaSatuanList;
  List<HargaSatuanModel>? get datasHargaSatuanList => _datasHargaSatuanList;

  List<AHSModel>? _datasAHS;
  List<AHSModel>? get datasAHS => _datasAHS;

  double jumlahHarga = 0;
  double jumlahPajak = 0;

  int? _idPengguna;

  void updateData(uid) {
    _idPengguna = uid;
    notifyListeners();
  }

  // void setDataDetailProyek(
  //     ProyekModel proyek,
  //     PelaksanaProyekModel pelaksana,
  //     List<KategoriPekerjaanModel> kategoriPekerjaan,
  //     List<HargaSatuanModel> hargaSatuan,
  //     List<AHSModel> ahs) {
  //   kategoriPekerjaan.sort((a, b) => a.level.compareTo(b.level));
  //   _dataProyek = proyek;
  //   _dataPelaksanaProyek = pelaksana;
  //   _datasKategoriPekerjaan = kategoriPekerjaan;
  //   filterHargaSatuan(hargaSatuan);
  //   _datasAHS = ahs;
  // }

  // void filterHargaSatuan(List<HargaSatuanModel> hargaSatuan) {
  //   int lengthKategori = _datasKategoriPekerjaan!.length;
  //   if (_datasHargaSatuan != null) _datasHargaSatuan = null;

  //   for (var i = 1; i <= lengthKategori; i++) {
  //     List<HargaSatuanModel> result = hargaSatuan.where((element) {
  //       return element.level[0] == i.toString() &&
  //           '.'.allMatches(element.level).length == 1;
  //     }).toList();
  //     result.sort((a, b) {
  //       int endFirst = a.level.length;
  //       int endSecond = b.level.length;
  //       int startFirst = a.level.indexOf(".");
  //       int startSecond = b.level.indexOf(".");
  //       return int.parse(a.level.substring(startFirst + 1, endFirst)).compareTo(
  //           int.parse(b.level.substring(startSecond + 1, endSecond)));
  //     });
  //     _datasHargaSatuan != null && _datasHargaSatuan!.isNotEmpty
  //         ? _datasHargaSatuan!.add(result)
  //         : _datasHargaSatuan = [result];
  //   }
  // }

  Future getDetail(ProyekModel proyek) async {
    await getDataKategori(proyek.idProyek);
    await getDataHargaSatuan(proyek.idProyek);
    await getDataAhs(proyek.idProyek);
    getJumlahHarga();
    getJumlahPajak();
    _dataProyek = proyek;
  }

  Future getDataKategori(id) async {
    try {
      if (_datasKategoriPekerjaan != null) {
        _datasKategoriPekerjaan = null;
      }
      await KategoriPekerjaanSource().getDatas(id).then((value) {
        if (value != null) _datasKategoriPekerjaan = value;
      });
      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  Future getDataAhs(id) async {
    try {
      if (_datasAHS != null) _datasAHS = null;
      await AHSSource().getDatasByIdPekerjaan(id).then((value) {
        if (value != null) _datasAHS = value;
      });
      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  Future getDataHargaSatuan(id) async {
    try {
      if (_datasHargaSatuan != null) _datasHargaSatuan = null;
      int lengthKategori = _datasKategoriPekerjaan!.length;
      await HargaSatuanSource().getDatas(id).then((value) {
        if (value != null) {
          for (var i = 1; i <= lengthKategori; i++) {
            List<HargaSatuanModel> result = value.where((element) {
              return element.level[0] == i.toString() &&
                  '.'.allMatches(element.level).length == 1;
            }).toList();
            result.sort((a, b) {
              int endFirst = a.level.length;
              int endSecond = b.level.length;
              int startFirst = a.level.indexOf(".");
              int startSecond = b.level.indexOf(".");
              return int.parse(a.level.substring(startFirst + 1, endFirst))
                  .compareTo(
                      int.parse(b.level.substring(startSecond + 1, endSecond)));
            });
            _datasHargaSatuan != null && _datasHargaSatuan!.isNotEmpty
                ? _datasHargaSatuan!.add(result)
                : _datasHargaSatuan = [result];
          }

          _datasHargaSatuanList = value;
        }
      });
      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  void getJumlahHarga() {
    jumlahHarga = 0;
    if (_datasHargaSatuanList != null && _datasHargaSatuanList!.isNotEmpty) {
      for (var element in _datasHargaSatuanList!) {
        if (element.tempTotalHarga.runtimeType == double) {
          jumlahHarga + element.tempTotalHarga;
        }
      }
    }

    notifyListeners();
  }

  void getJumlahPajak() {
    jumlahPajak = 0;
    double pajak = double.parse(_dataProyek!.pajak);
    if (jumlahHarga != 0 || jumlahHarga != 0.0) {
      jumlahPajak = pajak * jumlahHarga;
    }

    notifyListeners();
  }
}
