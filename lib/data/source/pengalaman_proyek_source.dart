import 'package:sqflite/sqflite.dart';

import '../model/pengalaman_proyek_model.dart';
import '../service/database_service.dart';

class PengalamanProyekSource {
  final String table = "pengalaman_proyek";
  DatabaseService databaseService = DatabaseService();

  Future<List<PengalamanProyekModel>> getPengalamanById() async {
    final data = await DatabaseService.databaseEstimator!
        .query(table, where: 'id_pengguna=?', whereArgs: ["110"]);
    // final data = await DatabaseService.databaseEstimator!.query(table);
    print(data);
    List<PengalamanProyekModel> result =
        data.map((e) => PengalamanProyekModel.fromJson(e)).toList();
    return result;
  }

  Future<int> insertData(Map<String, dynamic> row) async {
    final data = await DatabaseService.databaseEstimator!
        .insert(table, row, conflictAlgorithm: ConflictAlgorithm.replace);
    print(data);
    return data;
  }

  Future<List<PengalamanProyekModel>> getAll() async {
    final data = await DatabaseService.databaseEstimator!.query(table);
    final List<PengalamanProyekModel> result =
        data.map((e) => PengalamanProyekModel.fromJson(e)).toList();
    return result;
  }
}
