import '../model/proyek_model.dart';
import '../service/database_service.dart';

class ProyekSource {
  final String table = "proyek";

  Future<List<ProyekModel>?> getDatas(id) async {
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
}
