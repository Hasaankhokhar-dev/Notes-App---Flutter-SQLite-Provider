# Notes App - Flutter + SQLite + Provider

A fully functional Notes App built with Flutter using sqflite for local database storage and Provider for state management with complete CRUD operations.

---

## Features

- Add new notes  
- View all notes  
- Edit existing notes  
- Delete notes  
- Local SQLite storage (offline support)  
- State management using Provider  
- Auto UI update on data change  
- Clean and simple user interface  

---

## Tech Stack

Flutter – UI Framework  
Dart – Programming Language  
sqflite – Local SQLite Database  
path – Database file path  
Provider – State Management  

---

## What I Learned

- How to integrate sqflite in Flutter  
- How to create Model Classes with `toMap()` and `fromMap()`  
- How to perform CRUD operations with SQLite  
- How to use Provider for state management  
- How to use `ChangeNotifier` and `notifyListeners()`  
- Difference between `Consumer` and `Provider.of`  
- Difference between `listen: true` and `listen: false`  
- How to use `StatelessWidget` with Provider  
- How to use the `late` keyword in Dart  
- How to manage memory with `dispose()`  
- How to use `initState()` for initialization  
- Multi-screen navigation and passing data between screens  

---

## Project Structure

lib/  
│  
├── models/  
│   └── note_model.dart  
│  
├── providers/  
│   └── notes_provider.dart  
│  
├── db/  
│   └── db_helper.dart  
│  
├── screens/  
│   ├── home_screen.dart  
│   ├── add_note_screen.dart  
│   └── edit_note_screen.dart  
│  
└── main.dart  

---

## Core Functionalities

- Create: Add new note  
- Read: Display all notes  
- Update: Edit and update saved notes  
- Delete: Remove notes permanently  
- Persistent data using SQLite  
- Real-time UI update with Provider  

---

## Support

If you found this project helpful, please ⭐ star the repository on GitHub.
