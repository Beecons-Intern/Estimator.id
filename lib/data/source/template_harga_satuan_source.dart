import 'package:estimator_id/data/model/template_harga_satuan_model.dart';
import 'package:estimator_id/data/model/template_pekerjaan_model.dart';

import '../service/database_service.dart';

class TemplateHargaSatuanSource {
  final String table = "template_harga_satuan";

  Future<List<TemplateHargaSatuanModel>?> getDatas(id) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          columns: TemplateHargaSatuanFields.values,
          where: '${TemplatePekerjaanFields.idTemplate} = ?',
          whereArgs: [id],
          orderBy: '${TemplateHargaSatuanFields.level} ASC');
      if (data.isNotEmpty) {
        return data
            .map((json) => TemplateHargaSatuanModel.fromJson(json))
            .toList();
      } else {
        throw Exception("Data with id_template $id is empty");
      }
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
