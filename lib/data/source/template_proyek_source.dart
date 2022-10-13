import '../model/template_proyek_model.dart';
import '../service/database_service.dart';

class TemplateProyekSource {
  final String table = "template_proyek";

  Future<List<TemplateProyekModel>?> getDatas(id) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          columns: TemplateProyekFields.values,
          where: '${TemplateProyekFields.status} = ?',
          whereArgs: [id]);
      if (data.isNotEmpty) {
        return data.map((json) => TemplateProyekModel.fromJson(json)).toList();
      } else {
        throw Exception("Data with status $id is empty");
      }
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
