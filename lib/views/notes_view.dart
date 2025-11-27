

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/views/widgets/notes_view_body.dart' show NotesViewBody;

class notesView extends StatelessWidget{
  const notesView ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return const Scaffold(
     body: NotesViewBody(),
   );
  }
}



