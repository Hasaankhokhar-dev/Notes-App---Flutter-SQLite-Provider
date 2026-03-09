import 'package:notes_provider_app/models/notes_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper {
  Database? _database;
  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    } else {
      _database = await _initDb();
      return _database!;
    }
  }

  Future<Database> _initDb() async {
    String path = join(await getDatabasesPath(), 'notes.db');
    return await openDatabase(
      path,
      version: 2,
      onCreate: _createTable,
      onUpgrade: (db, oldVersion, newVersion) async {
        if (oldVersion < 2) {
          await db.execute("ALTER TABLE notes ADD COLUMN date TEXT");
        }
      },
    );
  }

  Future<void> _createTable(Database db, int version) async {
    await db.execute('''
   CREATE TABLE notes(
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   title TEXT,
   content TEXT,
   date TEXT)
  ''');
  }

  Future<void> insertNote(Note note) async {
    Database db = await database;
    await db.insert('notes', note.toMap());
  }

  Future<List<Note>> getNotes() async {
    Database db = await database;
    final data = await db.query('notes');
    List<Note> notes = [];
    for (var item in data) {
      notes.add(Note.fromMap(item));
    }
    return notes;
  }

  Future<void> updateNote(Note note) async {
    Database db = await database;
    await db.update(
      'notes',
      note.toMap(),
      where: 'id =?',
      whereArgs: [note.id],
    );
  }

  Future<void> deleteNote(int id) async {
    Database db = await database;
    await db.delete('notes', where: 'id =?', whereArgs: [id]);
  }
}
