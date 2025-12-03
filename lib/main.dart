import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/Models/Note_model.dart';
import 'package:notes/cubits/Add_note-cubit/add_note_cubit.dart';
import 'package:notes/simple_blok_observer.dart';
import 'package:notes/views/notes_view.dart';
import 'package:notes/constants.dart';

void main() async {
  await Hive.initFlutter();

  Bloc.observer = SimpleBlokObserver();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark,
        fontFamily: "Poppins",
        ),
        home:const notesView(),
      ),
    );
  }

}

