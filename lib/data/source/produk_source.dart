import '../model/produk_model.dart';
import '../service/database_service.dart';

class ProdukSource {
  final String table = "produk";

  Future<List<ProdukModel>?> getDatas() async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table, orderBy: '${ProdukFields.namaProduk} ASC');
      if (data.isNotEmpty) {
        return data.map((json) => ProdukModel.fromJson(json)).toList();
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
