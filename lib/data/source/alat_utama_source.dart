import '../model/alat_utama_model.dart';
import '../service/database_service.dart';

class AlatUtamaSource {
  String table = "alat_utama";

  Future<List<AlatUtamaModel>?> getDatas() async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(
        table,
        columns: AlatUtamaField.values,
        // where: '${AhsUtamaField.idAhs} = ?',
        // whereArgs: [id],
      );
      if (data.isNotEmpty) {
        return data.map((json) => AlatUtamaModel.fromJson(json)).toList();
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
