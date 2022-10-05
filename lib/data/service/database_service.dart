import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService {
  final String _databaseName = 'estimator.db';
  final int _databaseVersion = 1;

  Database? databaseEstimator;

  Future<void> deleteDatabase() async {
    Directory documenstDirectory = await getApplicationDocumentsDirectory();
    String path = p.join(documenstDirectory.path, _databaseName);
    databaseFactory.deleteDatabase(path);
    print("database berhasil dihapus");
    print(databaseEstimator);
  }

  Future<Database> database() async {
    if (databaseEstimator != null) return databaseEstimator!;
    databaseEstimator = await _initDatabase();
    return databaseEstimator!;
  }

  Future _initDatabase() async {
    Directory documenstDirectory = await getApplicationDocumentsDirectory();
    String path = p.join(documenstDirectory.path, _databaseName);
    ByteData data = await rootBundle
        .load(p.join("assets", "database", "estimator_pengguna.db"));
    List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

    await File(path).writeAsBytes(bytes, flush: true);

    return openDatabase(path);
  }
}
