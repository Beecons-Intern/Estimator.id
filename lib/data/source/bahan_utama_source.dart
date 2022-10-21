import 'package:estimator_id/data/model/bahan_utama_model.dart';
import '../service/database_service.dart';

class BahanUtamaSource {
  final String table = "bahan_utama";

  //get data
  Future<List<BahanUtamaModel>?> getData() async {
    print("data bahan");
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(
        table,
        columns: BahanUtamaField.values,
        // where: '${BahanUtamaField.idAhs} = ?',
        // whereArgs: [id],
      );
      print(data);
      if (data.isNotEmpty) {
        return data.map((json) => BahanUtamaModel.fromJson(json)).toList();
      }

      return null;
    } catch (error) {
      print(error);
      return throw Exception("Error $error");
    }
  }
}
