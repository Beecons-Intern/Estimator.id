import 'package:estimator_id/data/model/ahs_model.dart';

import '../service/database_service.dart';

class AhsSource {
  final String table = "ahs";

  //get data
  // Future<List<AhsModel>> getAllAhs() async {
  //   await databaseService.database();
  //   print("mualai");
  //   final data = await databaseService.databaseEstimator!.query(tables);
  //   print(data);
  //   final List<AhsModel> result =
  //       data.map((e) => AhsModel.fromJson(e)).toList();
  //   return result;
  // }

  Future<List<AhsModel>?> getDatas() async {
    try {
      final db = await DatabaseService.instance.database;
      final data = await db.query(
        table,
        columns: AhsFields.values,
        // where: '${AhsFields.idAhs} = ?',
        // whereArgs: [id],
      );
      if (data.isNotEmpty) {
        return data.map((json) => AhsModel.fromJson(json)).toList();
      }

      return null;
    } catch (error) {
      return throw Exception("Error $error");
    }
  }

  // Future<AhsModel> getData(id) async {
  //   try {
  //     final db = await DatabaseService.instance.database;
  //     final data = await db.query(tables,
  //         columns: AhsFields.values,
  //         where: '${AhsFields.idAhs} = ?',
  //         whereArgs: [id]);
  //     if (data.isNotEmpty) {
  //       return AhsModel.fromJson(data.first);
  //     } else {
  //       throw Exception("Data with $id is empty");
  //     }
  //   } catch (error) {
  //     return throw Exception("Error $error");
  //   }
  // }
}
