import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit.dart';
import 'package:notes/views/widgets/Add_Note_Buttom_Sheet.dart';
import 'package:notes/views/widgets/notes_view_body.dart' show NotesViewBody;

class notesView extends StatelessWidget {
  const notesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              context: context,
              builder: (context) {
                return const AddNoteButtomSheet();
              });
        },
          child: Icon(Icons.add), backgroundColor: Colors.white30,),
        body: const NotesViewBody(),
      ),
    );
  }
}



