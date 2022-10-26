import '../model/alat_utama_model.dart';
import '../service/database_service.dart';

class AlatUtamaSource {
  final String table = "alat_utama";

  Future<List<AlatUtamaModel>?> getDatas() async {
    try {
      final db = await DatabaseService.instance.database;
      final data =
          await db.query(table, orderBy: '${AlatUtamaFields.namaAlat} ASC');
      if (data.isNotEmpty) {
        return data.map((json) => AlatUtamaModel.fromJson(json)).toList();
      }

      return null;
    } catch (error, stacktrace) {
      return throw Exception("Error $error");
    }
  }

  Future<List<AlatUtamaModel>?> getDatasBySumber(int sumber) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          where: '${AlatUtamaFields.sumber} = ?',
          whereArgs: [sumber],
          orderBy: '${AlatUtamaFields.namaAlat} ASC');
      if (data.isNotEmpty) {
        return data.map((json) => AlatUtamaModel.fromJson(json)).toList();
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
