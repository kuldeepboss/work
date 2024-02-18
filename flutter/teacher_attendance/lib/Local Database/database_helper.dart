import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static const _dbName = 'Teacher_Attendance.db';
  static const teacherTable = "Teacher_Table";
  static const _dbVersion = 1;

  late Database _database;

  Future<Database> get database async {
    _database = await _initiateDatabase();
    return _database;
  }

  _initiateDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = '${directory.path}/$_dbName';
    return await openDatabase(path, version: _dbVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute(teacherTableExecute);
  }

  /// Teacher Profile
  static const bp_id = 'bp_id';
  static const bp_tal_id = 'bp_tal_id';
  static const full_name = 'full_name';
  static const designation = 'designation';
  static const bp_email = 'bp_email';
  static const bp_mobile_no = 'bp_mobile_no';
  static const attendanceConfiguration = 'attendanceConfiguration';

  String teacherTableExecute = ''' CREATE TABLE $teacherTable (
  $bp_tal_id TEXT PRIMARY KEY,
  $bp_id INTEGER,
  $full_name TEXT,
  $designation TEXT,
  $bp_email TEXT,
  $bp_mobile_no TEXT,
  $attendanceConfiguration TEXT)''';

  Future<int> teacherInsert(Map<String, dynamic> row) async {
    Database db = await database;
    return await db.insert(teacherTable, row);
  }

  Future<int> teacherUpdate(Map<String, dynamic> row) async {
    Database db = await database;
    String bpTalId = row[bp_tal_id];
    String bpID = row[bp_id];
    return await db.update(
      teacherTable,
      row,
      where: '$bp_tal_id = ? and $bp_id = ?',
      whereArgs: [bpTalId, bpID],
    );
  }

  Future<List<Map<String, Object?>>> teacherDataShow() async {
    Database db = await database;
    String query = 'SELECT * FROM $teacherTable';
    return await db.rawQuery(query);
  }

  Future<bool> checkTeacherIsAvailable(String bpId) async {
    Database db = await database;
    String query = "SELECT * FROM $teacherTable  WHERE $bp_tal_id =  '$bpId'";
    var result = await db.rawQuery(query);
    int count = result.length;
    if (count <= 0) {
      return false;
    } else {
      return true;
    }
  }
}
