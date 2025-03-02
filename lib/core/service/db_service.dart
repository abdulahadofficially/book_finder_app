import 'dart:developer';

import 'package:book_finder/utils/app_alerts.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../../data/models/book_offline_model/book_offline_model.dart';

class DatabaseHelper {
  static Database? _database;
  static const String tableName = 'books';

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    String path = join(await getDatabasesPath(), 'books.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          '''
          CREATE TABLE $tableName(
            id TEXT PRIMARY KEY,
            title TEXT,
            author TEXT,
            imageUrl TEXT,
            isFavourite INTEGER
          )
          ''',
        );
      },
    );
  }

  Future<void> addBook(BookOfflineModel book) async {
    try {
      final db = await database;

      // Check if book already exists
      final result = await db.query(
        tableName,
        where: 'id = ?',
        whereArgs: [book.id],
      );

      if (result.isNotEmpty) {
        await db.delete(
          tableName,
          where: 'id = ?',
          whereArgs: [book.id],
        );
        AppAlerts.showSuccessMessage(
            'Book Removed From Unfavourite', 'Successs');
      } else {
        await db.insert(
          tableName,
          book.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
        AppAlerts.showSuccessMessage('Book Add in Favourite', 'Successs');
      }
    } catch (e) {
      log('add database: ${e.toString()}');
    }
  }

  Future<List<BookOfflineModel>> getBooks() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(tableName);

    return List.generate(maps.length, (index) {
      return BookOfflineModel.fromMap(maps[index]);
    });
  }

  Future<void> deleteFavourite(String id) async {
    final db = await database;
    await db.delete(tableName, where: 'id = ?', whereArgs: [id]);
  }
}
