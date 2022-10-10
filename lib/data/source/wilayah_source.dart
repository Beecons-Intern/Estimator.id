import '../model/wilayah_model.dart';
import '../service/database_service.dart';

class WilayahSource {
  final String table = "wilayah";

  Future<List<WilayahModel>> getDatas(id) async {
    final db = await DatabaseService.instance.database;
    final data = await db.query(table,
        columns: WilayahFields.values,
        where: '${WilayahFields.idWilayah} = ?',
        whereArgs: [id]);
    // final data = await DatabaseService.databaseEstimator!.query(table);
    if (data.isNotEmpty) {
      return data.map((json) => WilayahModel.fromJson(json)).toList();
    } else {
      throw Exception("Data with $id is empty");
    }
  }

  Future<WilayahModel> getData(id) async {
    final db = await DatabaseService.instance.database;
    final data = await db.query(table,
        columns: WilayahFields.values,
        where: '${WilayahFields.idWilayah} = ?',
        whereArgs: [id]);
    if (data.isNotEmpty) {
      return WilayahModel.fromJson(data.first);
    } else {
      throw Exception("Data with $id is empty");
    }
  }

  Future<WilayahModel> getDataProv(id) async {
    final db = await DatabaseService.instance.database;
    final data = await db.query(table,
        columns: WilayahFields.values,
        where: '${WilayahFields.idProv} = ?',
        whereArgs: [id]);

    if (data.isNotEmpty) {
      return WilayahModel.fromJson(data.first);
    } else {
      throw Exception("Data with $id is empty");
    }
  }

  Future<List<WilayahModel>> getAll() async {
    final db = await DatabaseService.instance.database;
    final data = await db.query(table);
    return data.map((json) => WilayahModel.fromJson(json)).toList();
  }
}
