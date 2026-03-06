import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_provider_app/database/db_helper.dart';
import 'package:notes_provider_app/models/notes_model.dart';

//changenotifer = jab data bdle(means new message) sari screen ko undate ka inform kro
class NoteProvider extends ChangeNotifier {

  final DbHelper _dbHelper = DbHelper();
  List<Note> _notes = [];
  List<Note> get note => _notes;

  Future<void> loadNotes() async {
    _notes = await _dbHelper.getNotes();
    notifyListeners();
  }
  Future<void> addNote(Note note) async {
    await _dbHelper.insertNote(note);
    await loadNotes();
  }
  Future<void> updateNote(Note note) async {
    await _dbHelper.updateNote(note);
    await loadNotes();
  }

  Future<void> deleteNote(int id) async {
    await _dbHelper.deleteNote(id);
    await loadNotes();
  }
}
