import '../model/upah_utama_model.dart';
import '../service/database_service.dart';

class UpahUtamaSource {
  String table = "upah_utama";

  Future<List<UpahUtamaModel>?> getData() async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(
        table,
        columns: UpahUtamaField.values,
        // where: '${AhsUtamaField.idAhs} = ?',
        // whereArgs: [id],
      );
      if (data.isNotEmpty) {
        return data.map((json) => UpahUtamaModel.fromJson(json)).toList();
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
