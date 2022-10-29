import 'dart:convert';

import 'package:estimator_id/data/model/pengguna_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/source/pengguna_source.dart';
import '../../utilities/strings.dart';

class AuthViewModel extends ChangeNotifier {
  int? _userId;
  String? _email;
  String? _password;
  String? _username;

  set email(String emailInput) {
    _email = emailInput;
    notifyListeners();
  }

  set password(String passwordInput) {
    _password = passwordInput;
    notifyListeners();
  }

  set username(String usernameInput) {
    _username = usernameInput;
    notifyListeners();
  }

  String get email => _email!;
  String get password => _password!;

  bool get isAuth {
    return _userId != null;
  }

  int? get userId {
    return _userId;
  }

  Future checkEmail(String email) async {
    try {
      await PenggunaSource().checkEmail(email).then((value) {
        if (value != null) return true;
      });

      return false;
    } catch (error) {
      return error;
    }
  }

  Future signUp() async {
    try {
      final checkAcc = await checkEmail(email);
      if (checkAcc == true) {
        notifyListeners();
        return false;
      } else {
        final pengguna = PenggunaModel(
            namaPengguna: _username!,
            profil: "",
            alamat: "",
            idWilayah: "",
            perusahaan: "",
            email: _email!.toLowerCase(),
            noTelp: "",
            noWa: "",
            website: "",
            hargaMin: 0.0,
            hargaMax: 0.0,
            nego: "",
            username: _username!,
            password: _password!,
            foto: "",
            kategoriAkun: "",
            jenisAkun: "",
            status: "",
            kodeVerifikasi: "",
            statusVerifikasi: "",
            tglDaftar: tglDibuat,
            jamDaftar: jamDibuat);

        final data = await PenggunaSource().addData(pengguna);
        _userId = data.idPengguna;
        _email = data.email;
        _password = data.password;

        await signIn();

        notifyListeners();
        return true;
      }
    } catch (error) {
      return error;
    }
  }

  Future signIn() async {
    try {
      final data =
          await PenggunaSource().checkAcc(_email!.toLowerCase(), _password!);
      if (data != null) {
        _userId = data.idPengguna;
        _email = data.email;
        _password = data.password;

        final prefs = await SharedPreferences.getInstance();
        final userData = jsonEncode(
            {'userId': _userId, 'email': _email, 'password': _password});

        if (prefs.containsKey("userData")) {
          await prefs.remove('userData');
        }

        await prefs.setString('userData', userData);

        notifyListeners();
        return true;
      } else {
        return false;
      }
    } catch (error) {
      return error;
    }
  }

  Future<void> autoLogin() async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey('userData')) {
      return;
    }

    final extractedUserData =
        jsonDecode(prefs.getString('userData').toString());

    _userId = extractedUserData["userId"];
    _email = extractedUserData["email"];
    _password = extractedUserData["password"];
    notifyListeners();
  }

  Future<void> logOut() async {
    _userId = null;
    _email = null;
    _password = null;
    notifyListeners();

    final prefs = await SharedPreferences.getInstance();
    prefs.remove('userData');
    prefs.clear();
  }
}
