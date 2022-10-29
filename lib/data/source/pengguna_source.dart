import '../model/pengguna_model.dart';
import '../service/database_service.dart';

class PenggunaSource {
  final String table = "pengguna";

  Future<PenggunaModel> getData(id) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          columns: PenggunaFields.values,
          where: '${PenggunaFields.idPengguna} = ?',
          whereArgs: [id]);
      if (data.isNotEmpty) {
        return PenggunaModel.fromJson(data.first);
      } else {
        throw Exception("Data with $id is empty");
      }
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<int> updateData(PenggunaModel pengguna) async {
    try {
      final db = await DatabaseService.instance.database;

      return db.update(table, pengguna.toJson(),
          where: '${PenggunaFields.idPengguna} = ?',
          whereArgs: [pengguna.idPengguna]);
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<PenggunaModel?> checkAcc(String email, String password) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          columns: PenggunaFields.values,
          where:
              '${PenggunaFields.email} = ? and ${PenggunaFields.password} = ?',
          whereArgs: [email, password]);
      if (data.isNotEmpty) {
        return PenggunaModel.fromJson(data.first);
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<PenggunaModel?> checkEmail(String email) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          columns: PenggunaFields.values,
          where: '${PenggunaFields.email} = ?',
          whereArgs: [email]);
      if (data.isNotEmpty) {
        return PenggunaModel.fromJson(data.first);
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<PenggunaModel> addData(PenggunaModel pengguna) async {
    try {
      final db = await DatabaseService.instance.database;
      final id = await db.insert(table, pengguna.toJson());
      return pengguna.copy(idPengguna: id);
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
