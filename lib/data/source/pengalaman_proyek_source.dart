import '../model/pengalaman_proyek_model.dart';
import '../service/database_service.dart';

class PengalamanProyekSource {
  final String table = "pengalaman_proyek";

  Future<List<PengalamanProyekModel>?> getDatas(id) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          columns: PengalamanProyekFields.values,
          where: '${PengalamanProyekFields.idPengguna} = ?',
          whereArgs: [id]);
      if (data.isNotEmpty) {
        return data
            .map((json) => PengalamanProyekModel.fromJson(json))
            .toList();
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<PengalamanProyekModel> getData(id) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          columns: PengalamanProyekFields.values,
          where: '${PengalamanProyekFields.idPengalaman} = ?',
          whereArgs: [id]);
      // final data = await DatabaseService.databaseEstimator!.query(table);
      if (data.isNotEmpty) {
        return PengalamanProyekModel.fromJson(data.first);
      } else {
        throw Exception("Data with $id is empty");
      }
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<List<PengalamanProyekModel>> getAll() async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table);
      return data.map((json) => PengalamanProyekModel.fromJson(json)).toList();
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<PengalamanProyekModel> addData(
      PengalamanProyekModel pengalaman) async {
    try {
      final db = await DatabaseService.instance.database;
      final id = await db.insert(table, pengalaman.toJson());
      return pengalaman.copy(idPengalaman: id);
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<int> updateData(PengalamanProyekModel pengalaman) async {
    try {
      final db = await DatabaseService.instance.database;

      return await db.update(table, pengalaman.toJson(),
          where: '${PengalamanProyekFields.idPengalaman} = ?',
          whereArgs: [pengalaman.idPengalaman]);
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<int> delete(int id) async {
    try {
      final db = await DatabaseService.instance.database;

      return await db.delete(table,
          where: '${PengalamanProyekFields.idPengalaman} = ?', whereArgs: [id]);
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
