import 'package:estimator_id/data/model/ahs_utama_model.dart';
import 'package:estimator_id/data/model/alat_utama_model.dart';
import 'package:estimator_id/data/model/bahan_utama_model.dart';
import 'package:estimator_id/data/model/upah_utama_model.dart';
import 'package:flutter/cupertino.dart';
import '../../data/source/ahs_utama_source..dart';
import '../../data/source/alat_utama_source.dart';
import '../../data/source/bahan_utama_source.dart';
import '../../data/source/upah_utama_source.dart';

class KoleksiViewModel extends ChangeNotifier {
  // List<KoleksiAhsModel>? _koleksiAhsList = [];

  List<AhsUtamaModel>? _ahsUtama;
  List<AhsUtamaModel>? get ahsUtama => _ahsUtama;
  List<BahanUtamaModel>? _bahanUtama;
  List<BahanUtamaModel>? get bahanUtama => _bahanUtama;
  List<AlatUtamaModel>? _alatUtama;
  List<AlatUtamaModel>? get alatUtama => _alatUtama;
  List<UpahUtamaModel>? _upahUtama;
  List<UpahUtamaModel>? get upahUtama => _upahUtama;

  Future getAhs() async {
    try {
      final dataAhs = await AhsUtamaSource().getDatas();
      _ahsUtama = dataAhs;
      notifyListeners();
    } catch (e) {
      return e;
    }
  }

  Future getBahan() async {
    print("mulai view model bahan");
    try {
      final dataBahan = await BahanUtamaSource().getData();
      _bahanUtama = dataBahan;
      notifyListeners();
    } catch (e) {
      return e;
    }
  }

  Future getUpah() async {
    print("mulai view model upah");
    try {
      final dataUpah = await UpahUtamaSource().getData();
      _upahUtama = dataUpah;
      notifyListeners();
    } catch (e) {
      return e;
    }
  }

  Future getAlat() async {
    print("mulai view model alat");
    try {
      final dataAlat = await AlatUtamaSource().getDatas();
      _alatUtama = dataAlat;
      notifyListeners();
    } catch (e) {
      return e;
    }
  }
}
