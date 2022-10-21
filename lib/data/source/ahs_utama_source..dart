import 'package:estimator_id/data/model/ahs_utama_model.dart';
import '../service/database_service.dart';

class AhsUtamaSource {
  final String table = "ahs_utama";

  //get data
  Future<List<AhsUtamaModel>?> getDatas() async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(
        table,
        columns: AhsUtamaField.values,
        // where: '${AhsUtamaField.idAhs} = ?',
        // whereArgs: [id],
      );
      if (data.isNotEmpty) {
        return data.map((json) => AhsUtamaModel.fromJson(json)).toList();
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
