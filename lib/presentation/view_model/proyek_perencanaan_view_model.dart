import 'package:flutter/material.dart';

import '../../data/model/ahs_model.dart';
import '../../data/model/harga_satuan_model.dart';
import '../../data/model/kategori_pekerjaan_model.dart';
import '../../data/model/pelaksana_proyek_mode.dart';
import '../../data/model/proyek_model.dart';
import '../../data/model/template_ahs_model.dart';
import '../../data/model/template_harga_satuan_model.dart';
import '../../data/model/template_kategori_pekerjaan_model.dart';
import '../../data/source/ahs_source.dart';
import '../../data/source/harga_satuan_source.dart';
import '../../data/source/kategori_pekerjaan_source.dart';
import '../../data/source/pelaksana_proyek_source.dart';
import '../../utilities/strings.dart';

class ProyekPerencanaanViewModel extends ChangeNotifier {
  ProyekModel? _dataProyek;
  ProyekModel? get dataProyek => _dataProyek;

  PelaksanaProyekModel? _dataPelaksanaProyek;
  PelaksanaProyekModel? get dataPelaksanaProyek => _dataPelaksanaProyek;

  List<KategoriPekerjaanModel>? _datasKategoriPekerjaan;
  List<KategoriPekerjaanModel>? get datasKategoriPekerjaan =>
      _datasKategoriPekerjaan;

  List<HargaSatuanModel>? _datasHargaSatuan;
  List<HargaSatuanModel>? get datasHargaSatuan => _datasHargaSatuan;

  List<AHSModel>? _datasAHS;
  List<AHSModel>? get datasAHS => _datasAHS;

  List<TemplateKategoriPekerjaanModel>? _datasTemplateKategoriPekerjaan;
  List<TemplateHargaSatuanModel>? _datasTemplateHargaSatuan;
  List<TemplateAHSModel>? _datasTemplateAhs;

  int? _idPengguna;

  void updateData(uid) {
    _idPengguna = uid;
    notifyListeners();
  }

  void setDataProyek(
      ProyekModel proyek,
      List<TemplateKategoriPekerjaanModel> templateKategoriPekerjaan,
      List<TemplateHargaSatuanModel> templateHargaSatuan,
      List<TemplateAHSModel> templateAhs) {
    _dataProyek = proyek;
    _datasTemplateKategoriPekerjaan = templateKategoriPekerjaan;
    _datasTemplateHargaSatuan = templateHargaSatuan;
    _datasTemplateAhs = templateAhs;
    notifyListeners();
  }

  Future<PelaksanaProyekModel> insertPelaksanaProyek() async {
    try {
      final dataPelaksana = PelaksanaProyekModel(
          idProyek: _dataProyek!.idProyek!,
          idPengguna: _idPengguna!,
          posisi: proyekPerencanaan,
          status: status);

      final data = await PelaksanaProyekSource().addData(dataPelaksana);
      _dataPelaksanaProyek = data;

      notifyListeners();
      return data;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future insertKategoriPekerjaan() async {
    try {
      for (var template in _datasTemplateKategoriPekerjaan!) {
        final dataKategori = KategoriPekerjaanModel(
            idProyek: _dataProyek!.idProyek!,
            idPelaksana: _dataPelaksanaProyek!.idPelaksana!,
            level: template.level,
            kategori: template.kategori);

        final data = await KategoriPekerjaanSource().addData(dataKategori);

        if (_datasKategoriPekerjaan != null &&
            _datasKategoriPekerjaan!.isNotEmpty) {
          _datasKategoriPekerjaan!.add(data);
        } else {
          _datasKategoriPekerjaan = [data];
        }
      }
    } catch (err) {
      return throw Exception("Error $err");
    }
  }

  Future insertHargaSatuan() async {
    try {
      for (var template in _datasTemplateHargaSatuan!) {
        final namaKategori = _datasTemplateKategoriPekerjaan!.map((element) {
          if (element.idKategori.toString() == template.idKategori) {
            return element.kategori;
          }
        });

        final idKategori = _datasKategoriPekerjaan!.map((element) {
          if (element.kategori == namaKategori.toString()) {
            return element.idKategori;
          }
        });

        final dataHargaSatuan = HargaSatuanModel(
            idProyek: _dataProyek!.idProyek!,
            idPelaksana: _dataPelaksanaProyek!.idPelaksana!,
            idPekerjaan: template.idPekerjaan,
            namaPekerjaan: template.namaPekerjaan,
            satuan: template.satuan,
            idKategori: idKategori.toString(),
            level: template.level,
            haveSub: template.haveSub,
            totalHarga: template.totalHarga.runtimeType == double ? template.totalHarga as double : double.parse("${template.totalHarga.toString()}.0"),
            tempTotalHarga: template.tempTotalHarga.runtimeType == double ? template.tempTotalHarga as double : double.parse("${template.tempTotalHarga.toString()}.0"),
            sumber: template.sumber,
            tglDibuat: tglDibuat,
            jamDibuat: jamDibuat);

        final data = await HargaSatuanSource().addData(dataHargaSatuan);

        if (_datasHargaSatuan != null && _datasHargaSatuan!.isNotEmpty) {
          _datasHargaSatuan!.add(data);
        } else {
          _datasHargaSatuan = [data];
        }
      }
    } catch (err) {
      return throw Exception("Error $err");
    }
  }

  Future insertAHS() async {
    try {
      for (var template in _datasTemplateAhs!) {
        final dataAhs = AHSModel(
            idProyek: _dataProyek!.idProyek!,
            idPelaksana: _dataPelaksanaProyek!.idPelaksana!,
            idKategoriPekerjaan: template.idKategoriPekerjaan,
            idPekerjaan: template.idPekerjaan,
            idPekerjaanDuplikat: template.idPekerjaanDuplikat,
            namaKategoriPekerjaan: template.namaKategoriPekerjaan,
            namaPekerjaan: template.namaPekerjaan,
            satuanPekerjaan: template.satuanPekerjaan,
            kategori: template.kategori,
            idKategori: template.idKategori,
            koefisien: template.koefisien,
            namaKategori: template.namaKategori,
            satuanKategori: template.satuanKategori,
            spesifikasi: template.spesifikasi,
            merk: template.merk,
            tahunKategori: template.tahun,
            sumberKategori: template.sumberKategori,
            keteranganKategori: template.keteranganKategori,
            hargaDasar: template.hargaDasar,
            tahun: tahun,
            sumber: template.sumber,
            keterangan: template.keterangan,
            tglDibuat: tglDibuat,
            jamDibuat: jamDibuat);

        final data = await AHSSource().addData(dataAhs);

        if (_datasAHS != null && _datasAHS!.isNotEmpty) {
          _datasAHS!.add(data);
        } else {
          _datasAHS = [data];
        }
      }
    } catch (err) {
      return throw Exception("Error $err");
    }
  }

  Future insertPerencanaa() async {
    try {
      await insertPelaksanaProyek();
      await insertKategoriPekerjaan();
      await insertHargaSatuan();
      await insertAHS();
    } catch (error, stacktrace) {
      print(stacktrace);
      print(error);
    }
  }
}
