import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class ServiceDatabase {
  final String table = 'tbl_data';
  Future<Database?> initializeData() async {
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;
    Directory appDir = await getApplicationDocumentsDirectory();
    String appPath = appDir.path;
    String path = await getDatabasesPath();
    try {
      return await openDatabase(
        join(path, 'data.db'),
        version: 1,
        onCreate: (db, version) async {
          await db.execute(
              'CREATE TABLE $table(id INTEGER PRIMARY KEY,ip_address TEXT,port TEXT,instand TEXT,db_name TEXT,username TEXT,password TEXT)');
        },
      );
    } on Exception catch (e) {
      print("Error opening database: $e");
      return null;
    }
  }
}
