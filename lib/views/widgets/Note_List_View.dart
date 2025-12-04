import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/Models/Note_model.dart';
import 'package:notes/cubits/notes_cubit.dart';
import 'Custom_note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {

        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes !;
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: notes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return  Padding(
                  padding:const EdgeInsets.symmetric(vertical: 4),
                  child: NoteItem(
                    note: notes[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
