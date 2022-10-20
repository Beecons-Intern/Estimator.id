import 'package:flutter/material.dart';

import '../../data/model/pelaksana_proyek_mode.dart';
import '../../data/source/pelaksana_proyek_source.dart';

class PelaksanaProyekViewModel extends ChangeNotifier {
  final String status = "1";
  int? _idPengguna;

  List<PelaksanaProyekModel>? _datasPelaksanaProyek;
  List<PelaksanaProyekModel>? get datasPelaksanaProyek => _datasPelaksanaProyek;

  void updateData(uid) {
    _idPengguna = uid;
    notifyListeners();
  }

  Future getDatas() async {
    _datasPelaksanaProyek = null;
    try {
      final dataAllPelaksanaProyek =
          await PelaksanaProyekSource().getDataByPengguna(_idPengguna);

      if (dataAllPelaksanaProyek != null && dataAllPelaksanaProyek.isNotEmpty) {
        _datasPelaksanaProyek = datasPelaksanaProyek;
      }

      notifyListeners();
    } catch (error) {
      return error;
    }
  }

  Future<PelaksanaProyekModel> insertPelaksanaProyek(
      int idProyek, posisi) async {
    try {
      final dataPelaksana = PelaksanaProyekModel(
          idProyek: idProyek,
          idPengguna: _idPengguna!,
          posisi: posisi,
          status: status);

      final data = await PelaksanaProyekSource().addData(dataPelaksana);
      if (_datasPelaksanaProyek != null && _datasPelaksanaProyek!.isNotEmpty) {
        _datasPelaksanaProyek!.add(data);
      } else {
        _datasPelaksanaProyek = [data];
      }

      notifyListeners();
      return data;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
