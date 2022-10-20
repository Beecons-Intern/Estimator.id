import 'package:flutter/material.dart';

import '../../data/model/dokumen_model.dart';
import '../../data/model/proyek_model.dart';
import '../../data/source/dokumen_source.dart';
import '../../data/source/proyek_source.dart';
import '../../utilities/strings.dart';

class ProfileProyekViewModel extends ChangeNotifier {
  String? namaProyek;
  String? idWilayah = wilayahSleman;
  String? pemilik = "Estimator.id";
  String? jasaKontraktor;
  String? pajak;
  String? keteranganLain = "";
  String foto = noPhoto;

  List<DokumenModel>? _datasDokumen;
  List<DokumenModel>? get datasDokumen => _datasDokumen;

  List<DokumenModel> _deleteDatasDokumen = [];
  List<DokumenModel> get deleteDatasDokumen => _deleteDatasDokumen;

  ProyekModel? _dataProyek;
  ProyekModel? get dataProyek => _dataProyek;

  int? _idPengguna;

  void updateData(uid) {
    _idPengguna = uid;
    notifyListeners();
  }

  void setDataProyek(String namaProyek, String jasaKontraktor, String pajak) {
    this.namaProyek = namaProyek;
    this.jasaKontraktor = jasaKontraktor;
    this.pajak = pajak;
  }

  Future insertDataProyek() async {
    try {
      final dataProyekBaru = ProyekModel(
          idPengguna: _idPengguna!,
          namaProyek: namaProyek!,
          idWilayah: idWilayah!,
          pemilik: pemilik!,
          tahun: tahun,
          jasaKontraktor: jasaKontraktor!,
          pajak: pajak!,
          keteranganLain: keteranganLain!,
          status: status,
          kategoriProyek: proyekPerencanaan,
          foto: foto,
          tglDibuat: tglDibuat,
          jamDibuat: jamDibuat);
      final data = await ProyekSource().addData(dataProyekBaru);
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
}
