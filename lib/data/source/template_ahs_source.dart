import '../model/template_ahs_model.dart';
import '../service/database_service.dart';

class TemplateAHSSource {
  final String table = "template_ahs";

  Future<List<TemplateAHSModel>?> getDatas(id) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          columns: TemplateAHSFields.values,
          where: '${TemplateAHSFields.idTemplate} = ?',
          whereArgs: [id]);
      if (data.isNotEmpty) {
        return data.map((json) => TemplateAHSModel.fromJson(json)).toList();
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
