import 'package:flutter/material.dart';
import '../../data/model/dokumen_model.dart';
import '../../data/model/proyek_model.dart';
import '../../data/model/template_ahs_model.dart';
import '../../data/model/template_harga_satuan_model.dart';
import '../../data/model/template_kategori_pekerjaan_model.dart';
import '../../data/model/template_proyek_model.dart';
import '../../data/source/dokumen_source.dart';
import '../../data/source/proyek_source.dart';
import '../../data/source/template_ahs_source.dart';
import '../../data/source/template_harga_satuan_source.dart';
import '../../data/source/template_kategori_pekerjaan_source.dart';
import '../../data/source/template_proyek_source.dart';
import '../../utilities/strings.dart';

class TemplateProyekViewModel extends ChangeNotifier {
  final String status = "1";

  int? _idPengguna;

  void updateData(uid) {
    _idPengguna = uid;
    notifyListeners();
  }

  List<TemplateKategoriPekerjaanModel>? _datasTemplateKategoriPekerjaan;
  List<TemplateKategoriPekerjaanModel>? get datasTemplateKategoriPekerjaan =>
      _datasTemplateKategoriPekerjaan;

  List<List<TemplateHargaSatuanModel>>? _datasTemplateHargaSatuan;
  List<List<TemplateHargaSatuanModel>>? get datasTemplateHargaSatuan =>
      _datasTemplateHargaSatuan;

  List<TemplateProyekModel>? _datasTemplateProyek;
  List<TemplateProyekModel>? get datasTemplateProyek => _datasTemplateProyek;

  List<TemplateAHSModel>? _datasTemplateAhs;
  List<TemplateAHSModel>? get datasTemplateAhs => _datasTemplateAhs;

  List<DokumenModel>? _datasDokumen;
  List<DokumenModel>? get datasDokumen => _datasDokumen;

  List<DokumenModel> _deleteDatasDokumen = [];
  List<DokumenModel> get deleteDatasDokumen => _deleteDatasDokumen;

  ProyekModel? _dataProyek;
  ProyekModel? get dataProyek => _dataProyek;

  void updatedDataProyek(ProyekModel values) {
    _dataProyek = values;
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
        }
      });
      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  Future insertData(ProyekModel values) async {
    try {
      final data = await ProyekSource().addData(values);
      _dataProyek = data;
      notifyListeners();
    } catch (e) {
      return e;
    }
  }

  Future insertDokumen() async {
    try {
      if (_datasDokumen != null && _datasDokumen!.isNotEmpty) {
        for (var element in _datasDokumen!) {
          element.idProyek = _dataProyek!.idProyek!;

          if (element.idDokumen == null) {
            await DokumenSource()
                .addData(element)
                .then((value) => element = value);
          }
        }
      }
      notifyListeners();
    } catch (e) {
      return e;
    }
  }

  Future deleteDokumen() async {
    try {
      if (_deleteDatasDokumen.isNotEmpty) {
        for (var element in _deleteDatasDokumen) {
          await DokumenSource().delete(element.idDokumen!);
        }
      }
      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  Future saveProfileProyek(namaProyek, idWilayah, pemilik, jasaKontraktor,
      pajak, keteranganLain, foto) async {
    try {
      final dataProfileProyek = ProyekModel(
          idPengguna: _idPengguna!,
          namaProyek: namaProyek,
          idWilayah: idWilayah,
          pemilik: pemilik,
          tahun: tahun,
          jasaKontraktor: jasaKontraktor,
          pajak: pajak,
          keteranganLain: keteranganLain,
          status: status,
          kategoriProyek: "1",
          foto: foto ?? noPhoto,
          tglDibuat: tglDibuat,
          jamDibuat: jamDibuat);
      await insertData(dataProfileProyek).then((value) => null);
      await insertDokumen();
      await deleteDokumen();
      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  void addItem(DokumenModel dokumen) {
    DokumenModel? temp;
    if (_datasDokumen != null) {
      _datasDokumen!.map(
          (item) => item.dokumen == dokumen.dokumen ? null : temp = dokumen);
    } else {
      temp = dokumen;
    }

    if (temp != null) {
      _datasDokumen == null
          ? _datasDokumen = [dokumen]
          : _datasDokumen!.add(dokumen);
    }

    notifyListeners();
  }

  void removeItem(DokumenModel dokumen) {
    if (_datasDokumen != null) {
      for (var element in _datasDokumen!) {
        if (element.dokumen == dokumen.dokumen) {
          if (element.idDokumen != null) {
            _deleteDatasDokumen.add(dokumen);
            _datasDokumen!.length == 1
                ? _datasDokumen = null
                : _datasDokumen!.remove(dokumen);
          } else {
            _datasDokumen!.length <= 1
                ? _datasDokumen = null
                : _datasDokumen!.remove(dokumen);
          }
        }
      }
    }

    notifyListeners();
  }

  Future pilihTemplateProyek(TemplateProyekModel template, int? id) async {
    try {
      final templateProyek = ProyekModel(
          idPengguna: 0,
          namaProyek: template.namaProyek,
          idWilayah: "3404",
          pemilik: "Estimator.id",
          tahun: tahun,
          jasaKontraktor: template.jasaKontraktor,
          pajak: template.pajak,
          keteranganLain: "",
          status: status,
          kategoriProyek: "",
          foto: "",
          tglDibuat: tglDibuat,
          jamDibuat: jamDibuat);
      await getDataKategori(id);
      await getDataHargaSatuan(id);
      await getDataAhs(id);

      updatedDataProyek(templateProyek);
      notifyListeners();
    } catch (error) {
      return error;
    }
  }
}
