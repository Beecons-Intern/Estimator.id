import 'package:estimator_id/data/model/template_kategori_pekerjaan_model.dart';

import '../service/database_service.dart';

class TemplateKategoriPekerjaanSource {
  final String table = "template_kategori_pekerjaan";

  Future<List<TemplateKategoriPekerjaanModel>?> getDatas(id) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          columns: TemplateKategoriPekerjaanFields.values,
          where: '${TemplateKategoriPekerjaanFields.idTemplate} = ?',
          whereArgs: [id],
          orderBy: '${TemplateKategoriPekerjaanFields.level} ASC');
      if (data.isNotEmpty) {
        return data
            .map((json) => TemplateKategoriPekerjaanModel.fromJson(json))
            .toList();
      } else {
        throw Exception("Data with id_template $id is empty");
      }
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
