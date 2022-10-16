import '../model/rating_pengguna_model.dart';
import '../service/database_service.dart';

class RatingPenggunaSource {
  final String table = "rating_pengguna";

  Future<RatingPenggunaModel> addData(RatingPenggunaModel rating) async {
    try {
      final db = await DatabaseService.instance.database;
      final id = await db.insert(table, rating.toJson());
      return rating.copy(idRating: id);
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<RatingPenggunaModel?> getData(id) async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(table,
          columns: RatingPenggunaFields.values,
          where: '${RatingPenggunaFields.idPengguna} = ?',
          whereArgs: [id]);
      if (data.isNotEmpty) {
        return RatingPenggunaModel.fromJson(data[0]);
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  Future<int> updateData(RatingPenggunaModel rating) async {
    try {
      final db = await DatabaseService.instance.database;
      return await db.update(table, rating.updateToJson(),
          where: '${RatingPenggunaFields.idRating} = ?',
          whereArgs: [rating.idRating]);
    } catch (error) {
      return throw Exception("Error $error");
    }
  }
}
