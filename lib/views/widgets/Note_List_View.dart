
import 'package:flutter/cupertino.dart';

import 'Custom_note_item.dart';

class NoteListView extends StatelessWidget{
  const NoteListView ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
          itemBuilder: (context,index)
      {
        return const Padding(
          padding:  EdgeInsets.symmetric(vertical:8),
          child:  NoteItem(),
        );
      }),
    );
  }
}
