import '../model/proyek_model.dart';
import '../service/database_service.dart';

class ProyekSource {
  final String table = "proyek";

  Future<List<ProyekModel>?> getDatasByPengguna(id) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          columns: ProyekFields.values,
          where: '${ProyekFields.idPengguna} = ?',
          whereArgs: [id]);
      if (data.isNotEmpty) {
        return data.map((json) => ProyekModel.fromJson(json)).toList();
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<ProyekModel> addData(ProyekModel proyek) async {
    try {
      final db = await DatabaseService.instance.database;
      final id = await db.insert(table, proyek.toJson());
      return proyek.copy(idProyek: id);
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<List<ProyekModel>?> getDatas() async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table);
      if (data.isNotEmpty) {
        return data.map((json) => ProyekModel.fromJson(json)).toList();
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
