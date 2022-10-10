import '../model/kompetensi_model.dart';
import '../service/database_service.dart';

class KompetensiSource {
  final String table = "kompetensi";

  Future<List<KompetensiModel>?> getDatas(id) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          columns: KompetensiFields.values,
          where: '${KompetensiFields.idPengguna} = ?',
          whereArgs: [id]);
      if (data.isNotEmpty) {
        return data.map((json) => KompetensiModel.fromJson(json)).toList();
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<KompetensiModel> addData(KompetensiModel kompetensi) async {
    try {
      final db = await DatabaseService.instance.database;
      print("prosess...");
      final id = await db.insert(table, kompetensi.toJson());
      print("sukses $id");
      return kompetensi.copy(idKompetensi: id);
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<int> updateData(KompetensiModel kompetensi) async {
    try {
      final db = await DatabaseService.instance.database;
      return await db.update(table, kompetensi.toJson(),
          where: '${KompetensiFields.idKompetensi} = ?',
          whereArgs: [kompetensi.idKompetensi]);
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<int> delete(int id) async {
    try {
      final db = await DatabaseService.instance.database;

      return await db.delete(table,
          where: '${KompetensiFields.idKompetensi} = ?', whereArgs: [id]);
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
