import '../model/dokumen_model.dart';
import '../service/database_service.dart';

class DokumenSource {
  final String table = "dokumen_proyek";

  Future<List<DokumenModel>?> getDatas(id) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          columns: DokumenFields.values,
          where: '${DokumenFields.idProyek} = ?',
          whereArgs: [id]);
      if (data.isNotEmpty) {
        return data.map((json) => DokumenModel.fromJson(json)).toList();
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<DokumenModel> addData(DokumenModel dokumen) async {
    try {
      final db = await DatabaseService.instance.database;
      final id = await db.insert(table, dokumen.toJson());
      return dokumen.copy(idProyek: id);
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<int> updateData(DokumenModel dokumen) async {
    try {
      final db = await DatabaseService.instance.database;

      return await db.update(table, dokumen.toJson(),
          where: '${DokumenFields.idDokumen} = ?',
          whereArgs: [dokumen.idDokumen]);
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<int> delete(int id) async {
    try {
      final db = await DatabaseService.instance.database;

      return await db.delete(table,
          where: '${DokumenFields.idDokumen} = ?', whereArgs: [id]);
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
