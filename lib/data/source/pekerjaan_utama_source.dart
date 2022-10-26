import '../model/pekerjaan_utama_model.dart';
import '../service/database_service.dart';

class PekerjaanUtamaSource {
  final String table = "pekerjaan_utama";

  Future<List<PekerjaanUtamaModel>?> getDatas() async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          orderBy: "${PekerjaanUtamaFields.namaPekerjaan} ASC");
      if (data.isNotEmpty) {
        return data.map((json) => PekerjaanUtamaModel.fromJson(json)).toList();
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<List<PekerjaanUtamaModel>?> getDatasBySumber(int sumber) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          where: '${PekerjaanUtamaFields.sumber} = ?',
          whereArgs: [sumber],
          orderBy: "${PekerjaanUtamaFields.namaPekerjaan} ASC");
      if (data.isNotEmpty) {
        return data.map((json) => PekerjaanUtamaModel.fromJson(json)).toList();
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
