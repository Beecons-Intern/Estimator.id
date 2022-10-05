import '../model/pengguna_model.dart';
import '../service/database_service.dart';

class PenggunaSource {
  final String table = "pengguna";
  DatabaseService databaseService = DatabaseService();

  Future<PenggunaModel> selectById() async {
    await databaseService.database();
    final data = await databaseService.databaseEstimator!
        .query(table, where: 'id_pengguna=?', whereArgs: [110]);
    PenggunaModel result = PenggunaModel.fromJson(data[0]);
    return result;
  }

  Future update(Map<String, dynamic> values) async {
    await databaseService.database();
    try {
      final query = await databaseService.databaseEstimator!
          .update(table, values, where: 'id_pengguna=?', whereArgs: [110]);
      return query;
    } catch (e) {
      return e;
    }
  }
}
