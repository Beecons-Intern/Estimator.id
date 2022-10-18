import '../model/pelaksana_proyek_mode.dart';
import '../service/database_service.dart';

class PelaksanaProyekSource {
  final String table = "pelaksana_proyek";

  Future<List<PelaksanaProyekModel>?> getDatas() async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table);
      if (data.isNotEmpty) {
        return data.map((json) => PelaksanaProyekModel.fromJson(json)).toList();
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<PelaksanaProyekModel> addData(PelaksanaProyekModel pelaksana) async {
    try {
      final db = await DatabaseService.instance.database;
      final id = await db.insert(table, pelaksana.toJson());
      return pelaksana.copy(idPelaksana: id);
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<List<PelaksanaProyekModel>?> getDataByProyek(id) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          columns: PelaksanaProyekFields.values,
          where: '${PelaksanaProyekFields.idProyek} = ?',
          whereArgs: [id]);
      if (data.isNotEmpty) {
        return data.map((json) => PelaksanaProyekModel.fromJson(json)).toList();
      }
      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<List<PelaksanaProyekModel>?> getDataByPengguna(id) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          columns: PelaksanaProyekFields.values,
          where: '${PelaksanaProyekFields.idPengguna} = ?',
          whereArgs: [id]);
      if (data.isNotEmpty) {
        return data.map((json) => PelaksanaProyekModel.fromJson(json)).toList();
      }
      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<int> delete(int id) async {
    try {
      final db = await DatabaseService.instance.database;
      return await db.delete(table,
          where: '${PelaksanaProyekFields.idPelaksana} = ?', whereArgs: [id]);
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
