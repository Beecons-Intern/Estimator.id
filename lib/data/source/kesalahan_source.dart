import '../model/kesalahan_model.dart';
import '../service/database_service.dart';

class KesalahanSource {
  final String table = "bugs";

  Future<KesalahanModel> addData(KesalahanModel kesalahan) async {
    try {
      final db = await DatabaseService.instance.database;
      final id = await db.insert(table, kesalahan.toJson());
      return kesalahan.copy(idBugs: id);
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<KesalahanModel?> getData(id) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          columns: KesalahanFields.values,
          where: '${KesalahanFields.idPengguna} = ?',
          whereArgs: [id]);
      if (data.isNotEmpty) {
        return KesalahanModel.fromJson(data[0]);
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<int> updateData(KesalahanModel kesalahan) async {
    try {
      final db = await DatabaseService.instance.database;
      return await db.update(table, kesalahan.updateToJson(),
          where: '${KesalahanFields.idBugs} = ?',
          whereArgs: [kesalahan.idBugs]);
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
