import '../model/wilayah_model.dart';
import '../service/database_service.dart';

class WilayahSource {
  final String table = "wilayah";
  DatabaseService databaseService = DatabaseService();

  Future<WilayahModel> getWilayahById(id) async {
    await databaseService.database();
    final data = await databaseService.databaseEstimator!
        .query(table, where: 'id_wilayah=?', whereArgs: [id]);
    WilayahModel result = WilayahModel.fromJson(data[0]);
    return result;
  }

  Future<String> getProvById(id) async {
    await databaseService.database();
    final data = await databaseService.databaseEstimator!
        .query(table, where: 'id_wilayah=?', whereArgs: [id]);
    final result = data[0]["wilayah"].toString();
    return result;
  }

  Future<List<WilayahModel>> getAll() async {
    await databaseService.database();
    final data = await databaseService.databaseEstimator!.query(table);
    final List<WilayahModel> result =
        data.map((e) => WilayahModel.fromJson(e)).toList();
    return result;
  }
}
