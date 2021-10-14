import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  static final DBProvider db = DBProvider._();

  factory DBProvider() => db;
  DBProvider._();

  late Database _database;
  Database get database => _database;

  // Se llama en el main y se inicializa la db
  Future<void> initDB() async {
    // Construct the path to the app's writable database file:
    /*  var dbDir = await getDatabasesPath();
    var dbPath = join(dbDir!, "app.db"); */

    final Directory documentsDirectory =
        await getApplicationDocumentsDirectory();
    final String dbPath = join(documentsDirectory.path, 'app.db');

    // Delete any existing database:
    //TODO Comentar para release
    // await deleteDatabase(dbPath);

    // Create the writable database file from the bundled demo database file:
    final ByteData data = await rootBundle.load("assets/info.db");
    final List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await File(dbPath).writeAsBytes(bytes);

    _database = await openDatabase(dbPath, version: 1);
  }
}
