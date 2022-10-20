import 'package:flutter/material.dart';
import '../../data/model/template_ahs_model.dart';
import '../../data/model/template_harga_satuan_model.dart';
import '../../data/model/template_kategori_pekerjaan_model.dart';
import '../../data/model/template_proyek_model.dart';
import '../../data/source/template_ahs_source.dart';
import '../../data/source/template_harga_satuan_source.dart';
import '../../data/source/template_kategori_pekerjaan_source.dart';
import '../../data/source/template_proyek_source.dart';
import '../../utilities/strings.dart';

class TemplateProyekViewModel extends ChangeNotifier {
  List<TemplateKategoriPekerjaanModel>? _datasTemplateKategoriPekerjaan;
  List<TemplateKategoriPekerjaanModel>? get datasTemplateKategoriPekerjaan =>
      _datasTemplateKategoriPekerjaan;

  List<List<TemplateHargaSatuanModel>>? _datasTemplateHargaSatuan;
  List<List<TemplateHargaSatuanModel>>? get datasTemplateHargaSatuan =>
      _datasTemplateHargaSatuan;

  List<TemplateHargaSatuanModel>? _datasTemplateHargaSatuanList;
  List<TemplateHargaSatuanModel>? get datasTemplateHargaSatuanList =>
      _datasTemplateHargaSatuanList;

  List<TemplateAHSModel>? _datasTemplateAhs;
  List<TemplateAHSModel>? get datasTemplateAhs => _datasTemplateAhs;

  List<TemplateProyekModel>? _datasTemplateProyek;
  List<TemplateProyekModel>? get datasTemplateProyek => _datasTemplateProyek;

  TemplateProyekModel? _selectedTemplateProyek;
  TemplateProyekModel? get selectedTemplateProyek => _selectedTemplateProyek;

  void setSelectedTemplateProyek(TemplateProyekModel templateProyek) {
    _selectedTemplateProyek = templateProyek;
  }

  Future getAllDatas() async {
    try {
      await TemplateProyekSource().getDatas(status).then((value) {
        if (value != null) _datasTemplateProyek = value;
      });
      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  Future getDetailTemplate(TemplateProyekModel templateProyek) async {
    await getDataKategori(templateProyek.idTemplate);
    await getDataHargaSatuan(templateProyek.idTemplate);
    await getDataAhs(templateProyek.idTemplate);
    setSelectedTemplateProyek(templateProyek);
  }

  Future<void> clearData() async {
    _datasTemplateKategoriPekerjaan = null;
    _datasTemplateHargaSatuan = null;
    _datasTemplateAhs = null;
    _selectedTemplateProyek = null;
  }

  Future getDataKategori(id) async {
    try {
      if (_datasTemplateKategoriPekerjaan != null) {
        _datasTemplateKategoriPekerjaan = null;
      }
      await TemplateKategoriPekerjaanSource().getDatas(id).then((value) {
        if (value != null) _datasTemplateKategoriPekerjaan = value;
      });
      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  Future getDataAhs(id) async {
    try {
      if (_datasTemplateAhs != null) _datasTemplateAhs = null;
      await TemplateAHSSource().getDatas(id).then((value) {
        if (value != null) _datasTemplateAhs = value;
      });
      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  Future getDataHargaSatuan(id) async {
    try {
      if (_datasTemplateHargaSatuan != null) _datasTemplateHargaSatuan = null;
      int lengthKategori = _datasTemplateKategoriPekerjaan!.length;
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
            _datasTemplateHargaSatuan != null &&
                    _datasTemplateHargaSatuan!.isNotEmpty
                ? _datasTemplateHargaSatuan!.add(result)
                : _datasTemplateHargaSatuan = [result];
          }

          _datasTemplateHargaSatuanList = value;
        }
      });
      notifyListeners();
    } catch (error) {
      return error;
    }
  }
}
