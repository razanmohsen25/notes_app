import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes/Models/Note_model.dart';

import '../constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);

     notes = notesBox.values.toList();


    // اكتب السطر دة لو عاوزة السرعه /لكن اللي فوق لو هنقرا بشكل اوضح
    //emit(NotesSuccess(notesBox.values.toList(),));

  }


  }






