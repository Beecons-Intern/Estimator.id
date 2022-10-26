import '../model/bahan_utama_model.dart';
import '../service/database_service.dart';

class BahanUtamaSource {
  final String table = "bahan_utama";

  Future<List<BahanUtamaModel>?> getDatas() async {
    try {
      final db = await DatabaseService.instance.database;
      final data =
          await db.query(table, orderBy: '${BahanUtamaFields.namaBahan} ASC');
      if (data.isNotEmpty) {
        return data.map((json) => BahanUtamaModel.fromJson(json)).toList();
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<List<BahanUtamaModel>?> getDatasBySumber(int sumber) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          where: '${BahanUtamaFields.sumber} = ?',
          whereArgs: [sumber],
          orderBy: '${BahanUtamaFields.namaBahan} ASC');
      if (data.isNotEmpty) {
        return data.map((json) => BahanUtamaModel.fromJson(json)).toList();
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
