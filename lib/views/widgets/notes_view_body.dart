import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/cubits/notes_cubit.dart';
import 'Custom_app_Bar.dart';
import 'Custom_note_item.dart';
import 'Note_List_View.dart';

class NotesViewBody extends StatefulWidget{
  const NotesViewBody ({super. key}) ;

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {

  @override
  void initState(){
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: const[
          SizedBox(height: 50,),
          CustomAppBar(title: 'Notes', icon: Icons.search,),

          Expanded(child: NoteListView()),



        ],
      ),
    );
  }
}
