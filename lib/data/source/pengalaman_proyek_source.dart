import '../model/pengalaman_proyek_model.dart';
import '../service/database_service.dart';

class PengalamanProyekSource {
  final String table = "pengalaman_proyek";
  DatabaseService databaseService = DatabaseService();

  Future<List<PengalamanProyekModel>> getPengalamanById() async {
    await databaseService.database();
    final data = await databaseService.databaseEstimator!
        .query(table, where: 'id_pengguna=?', whereArgs: [110]);
    List<PengalamanProyekModel> result =
        data.map((e) => PengalamanProyekModel.fromJson(e)).toList();
    return result;
  }

  Future<int> insertData(Map<String, dynamic> row) async {
    await databaseService.database();
    final data = await databaseService.databaseEstimator!.insert(table, row);
    await getAll();
    return data;
  }

  Future<List<PengalamanProyekModel>> getAll() async {
    await databaseService.database();
    final data = await databaseService.databaseEstimator!.query(table);
    print(data);
    final List<PengalamanProyekModel> result =
        data.map((e) => PengalamanProyekModel.fromJson(e)).toList();
    return result;
  }
}
