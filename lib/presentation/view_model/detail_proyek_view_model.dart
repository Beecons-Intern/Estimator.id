import 'package:flutter/material.dart';
import '../../data/model/template_harga_satuan_model.dart';
import '../../data/model/template_kategori_pekerjaan_model.dart';
import '../../data/source/template_harga_satuan_source.dart';
import '../../data/source/template_kategori_pekerjaan_source.dart';

class DetailProyekViewModel extends ChangeNotifier {
  List<TemplateKategoriPekerjaanModel>? _datasKategoriPekerjaan;
  List<TemplateKategoriPekerjaanModel>? get datasKategoriPekerjaan =>
      _datasKategoriPekerjaan;

  List<List<TemplateHargaSatuanModel>>? _datasHargaSatuan;
  List<List<TemplateHargaSatuanModel>>? get datasHargaSatuan =>
      _datasHargaSatuan;

  Future getDataKategori(id) async {
    try {
      if (_datasKategoriPekerjaan != null) _datasKategoriPekerjaan = null;
      await TemplateKategoriPekerjaanSource().getDatas(id).then((value) {
        if (value != null) _datasKategoriPekerjaan = value;
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
      await TemplateHargaSatuanSource().getDatas(id).then((value) {
        if (value != null) {
          for (var i = 1; i <= lengthKategori; i++) {
            List<TemplateHargaSatuanModel> result = value.where((element) {
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
        }
      });
      notifyListeners();
    } catch (error, stacktrace) {
      return error;
    }
  }
}
