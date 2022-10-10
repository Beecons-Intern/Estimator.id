import 'package:flutter/cupertino.dart';

import '../../data/model/pengalaman_proyek_model.dart';
import '../../data/source/pengalaman_proyek_source.dart';

enum PengalamanProyekState { none, loading, error }

class PengalamanProyekViewModel extends ChangeNotifier {
  int? _idPengguna;

  void updateData(uid) {
    _idPengguna = uid;
    notifyListeners();
  }

  PengalamanProyekState _state = PengalamanProyekState.none;
  PengalamanProyekState get state => _state;

  changeState(PengalamanProyekState state) {
    _state = state;
    notifyListeners();
  }

  List<PengalamanProyekModel>? _datasPengalaman;
  List<PengalamanProyekModel>? get datasPengalaman => _datasPengalaman;

  Future getDatas() async {
    changeState(PengalamanProyekState.loading);

    try {
      await PengalamanProyekSource().getDatas(_idPengguna).then((value) async {
        if (value != null) _datasPengalaman = value;
      });
      notifyListeners();
      changeState(PengalamanProyekState.none);
    } catch (e) {
      changeState(PengalamanProyekState.error);
    }
  }

  Future insertData(PengalamanProyekModel values) async {
    try {
      final data = await PengalamanProyekSource().addData(values);
      if (_datasPengalaman != null) {
        _datasPengalaman!.add(data);
      } else {
        _datasPengalaman = [data];
      }
      notifyListeners();
    } catch (e) {
      return e;
    }
  }
}
