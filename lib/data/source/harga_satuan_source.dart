import '../model/harga_satuan_model.dart';
import '../service/database_service.dart';

class HargaSatuanSource {
  final String table = "harga_satuan";

  Future<List<HargaSatuanModel>?> getDatas(id) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          columns: HargaSatuanFields.values,
          where: '${HargaSatuanFields.idProyek} = ?',
          whereArgs: [id]);

      if (data.isNotEmpty) {
        return data.map((json) => HargaSatuanModel.fromJson(json)).toList();
      }

      return null;
    } catch (error) {
      print("Harga satuan $error");
      return throw Exception("Error $error");
    }
  }

  Future<HargaSatuanModel> addData(HargaSatuanModel hargaSatuan) async {
    try {
      final db = await DatabaseService.instance.database;
      final id = await db.insert(table, hargaSatuan.toJson());
      return hargaSatuan.copy(idHargaSatuan: id);
    } catch (error) {
      print(error);
      return throw Exception("Error $error");
    }
  }
}
