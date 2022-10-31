import '../model/kategori_pekerjaan_model.dart';
import '../service/database_service.dart';

class KategoriPekerjaanSource {
  final String table = "kategori_pekerjaan";

  Future<List<KategoriPekerjaanModel>?> getDatas(id) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          columns: KategoriPekerjaanFields.values,
          where: '${KategoriPekerjaanFields.idProyek} = ?',
          whereArgs: [id]);
      if (data.isNotEmpty) {
        return data
            .map((json) => KategoriPekerjaanModel.fromJson(json))
            .toList();
      }

      return null;
    } catch (error) {
      print(error);
      return throw Exception("Error $error");
    }
  }

  Future<KategoriPekerjaanModel> addData(
      KategoriPekerjaanModel kategoriPekerjaan) async {
    try {
      final db = await DatabaseService.instance.database;
      final id = await db.insert(table, kategoriPekerjaan.toJson());
      print(kategoriPekerjaan.copy(idKategori: id));
      return kategoriPekerjaan.copy(idKategori: id);
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
