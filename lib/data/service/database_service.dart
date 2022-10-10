import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService {
  static final DatabaseService instance = DatabaseService._init();

  final String _databaseName = 'estimator.db';

  static Database? _database;

  DatabaseService._init();

  // Future<void> deleteDatabase() async {
  //   Directory documenstDirectory = await getApplicationDocumentsDirectory();
  //   String path = p.join(documenstDirectory.path, _databaseName);
  //   databaseFactory.deleteDatabase(path);
  //   // print("database berhasil dihapus");
  //   // print(databaseEstimator);
  // }

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    final dbPath = await getDatabasesPath();
    final path = p.join(dbPath, _databaseName);
    ByteData data =
        await rootBundle.load(p.join("assets", "database", "estimator.db"));
    List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

    await File(path).writeAsBytes(bytes, flush: true);

    return await openDatabase(path);
  }

  // Future<Database> database() async {
  //   if (databaseEstimator != null) return databaseEstimator!;
  //   databaseEstimator = await _initDatabase();
  //   return databaseEstimator!;
  // }

  // Future _initDatabase() async {
  //   Directory documenstDirectory = await getApplicationDocumentsDirectory();
  //   String path = p.join(documenstDirectory.path, _databaseName);
  //   ByteData data =
  //       await rootBundle.load(p.join("assets", "database", "estimator.db"));
  //   List<int> bytes =
  //       data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

  //   await File(path).writeAsBytes(bytes, flush: true);

  //   return openDatabase(path);
  // }
}
