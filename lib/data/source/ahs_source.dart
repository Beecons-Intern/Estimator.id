import '../model/ahs_model.dart';
import '../service/database_service.dart';

class AHSSource {
  final String table = "ahs";

  Future<List<AHSModel>?> getDatasByIdPekerjaan(id) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          columns: AHSFields.values, where: '${AHSFields.idPekerjaan} = ?');
      if (data.isNotEmpty) {
        return data.map((json) => AHSModel.fromJson(json)).toList();
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<AHSModel> addData(AHSModel ahs) async {
    try {
      final db = await DatabaseService.instance.database;
      final id = await db.insert(table, ahs.toJson());
      return ahs.copy(idAhs: id);
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
