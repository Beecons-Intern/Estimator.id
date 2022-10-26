import '../model/ahs_utama_model.dart';
import '../service/database_service.dart';

class AHSUtamaSource {
  final String table = "ahs_utama";

  Future<List<AHSUtamaModel>?> getDatas() async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table);
      if (data.isNotEmpty) {
        return data.map((json) => AHSUtamaModel.fromJson(json)).toList();
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<List<AHSUtamaModel>?> getDatasByIdPekerjaan(String id) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          columns: AHSUtamaFields.values,
          where: '${AHSUtamaFields.idPekerjaan} = ?',
          whereArgs: [id], orderBy: '${AHSUtamaFields.namaKategori} ASC');
      if (data.isNotEmpty) {
        return data.map((json) => AHSUtamaModel.fromJson(json)).toList();
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
