import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes/Models/Note_model.dart';

import '../constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async
  {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      List<NoteModel> Notes =notesBox.values.toList();
      emit(NotesSuccess(Notes));

      // اكتب السطر دة لو عاوزة السرعه /لكن اللي فوق لو هنقرا بشكل اوضح
      //emit(NotesSuccess(notesBox.values.toList(),));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }


  }





}
