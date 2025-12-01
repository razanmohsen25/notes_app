import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/Models/Note_model.dart';
import 'package:notes/views/notes_view.dart';
import 'package:notes/views/widgets/constants.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,
      fontFamily: "Poppins",
      ),
      home:const notesView(),
    );
  }

}

