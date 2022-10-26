import '../model/upah_utama_model.dart';
import '../service/database_service.dart';

class UpahUtamaSource {
  final String table = "upah_utama";

  Future<List<UpahUtamaModel>?> getDatas() async {
    try {
      final db = await DatabaseService.instance.database;
      final data =
          await db.query(table, orderBy: '${UpahUtamaFields.namaUpah} ASC');
      if (data.isNotEmpty) {
        return data.map((json) => UpahUtamaModel.fromJson(json)).toList();
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<List<UpahUtamaModel>?> getDatasBySumber(int sumber) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          where: '${UpahUtamaFields.sumber} = ?',
          whereArgs: [sumber],
          orderBy: '${UpahUtamaFields.namaUpah} ASC');
      if (data.isNotEmpty) {
        return data.map((json) => UpahUtamaModel.fromJson(json)).toList();
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
