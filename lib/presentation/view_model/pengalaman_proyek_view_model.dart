import 'package:flutter/cupertino.dart';

import '../../data/model/pengalaman_proyek_model.dart';
import '../../data/source/pengalaman_proyek_source.dart';

enum PengalamanProyekState { none, loading, error }

class PengalamanProyekViewModel extends ChangeNotifier {
  PengalamanProyekViewModel() {
    inisialData();
  }

  PengalamanProyekState _state = PengalamanProyekState.none;
  PengalamanProyekState get state => _state;

  changeState(PengalamanProyekState state) {
    _state = state;
    notifyListeners();
  }

  List<PengalamanProyekModel>? _data;
  List<PengalamanProyekModel>? get data => _data;

  Future inisialData() async {
    changeState(PengalamanProyekState.loading);

    try {
      await PengalamanProyekSource().getPengalamanById().then((value) async {
        _data = value;
        print(_data!);
      });
      notifyListeners();
      changeState(PengalamanProyekState.none);
    } catch (e) {
      print(e);
      changeState(PengalamanProyekState.error);
    }
  }

  Future insertData(
      {required idPengguna,
      required namaProyek,
      required tahun,
      required posisi}) async {
    try {
      final dataProyek = {
        "id_pengguna": idPengguna.toString(),
        "nama_proyek": namaProyek.toString(),
        "tahun": tahun.toString(),
        "posisi": posisi.toString()
      };
      final data = await PengalamanProyekSource().insertData(dataProyek);
      return data;
    } catch (e) {
      return e;
    }
  }
}
