

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/views/widgets/notes_view_body.dart' show NotesViewBody;

class notesView extends StatelessWidget{
  const notesView ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     floatingActionButton: FloatingActionButton(onPressed: () {}, child: Icon(Icons.add),backgroundColor: Colors.white30,),
     body:  const NotesViewBody(),
   );
  }
}



