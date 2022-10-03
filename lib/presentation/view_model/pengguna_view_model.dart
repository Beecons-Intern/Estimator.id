import 'package:flutter/material.dart';

import '../../data/model/pengguna_model.dart';
import '../../data/source/pengguna_source.dart';

enum PenggunaViewState { none, loading, error }

class PenggunaViewModel extends ChangeNotifier {
  PenggunaViewModel() {
    inisialData();
  }

  PenggunaViewState _state = PenggunaViewState.none;
  PenggunaViewState get state => _state;

  changeState(PenggunaViewState state) {
    _state = state;
    notifyListeners();
  }

  PenggunaModel? _data;
  PenggunaModel? get data => _data;

  Future inisialData() async {
    changeState(PenggunaViewState.loading);

    try {
      await PenggunaSource().selectById().then((value) {
        _data = value;
      });
      notifyListeners();
      changeState(PenggunaViewState.none);
    } catch (e) {
      changeState(PenggunaViewState.error);
    }
  }
}
