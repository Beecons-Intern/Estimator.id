import 'package:sqflite/sqflite.dart';
import '../model/pengguna_model.dart';
import '../service/database_service.dart';

class PenggunaSource {
  DatabaseService databaseService = DatabaseService();

  Future<PenggunaModel> selectById() async {
    await databaseService.database();
    final data = await databaseService.databaseEstimator!
        .query('pengguna', where: 'id_pengguna=?', whereArgs: [110]);
    PenggunaModel result = PenggunaModel.fromJson(data[0]);
    return result;
  }
}
