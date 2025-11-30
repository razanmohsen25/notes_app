
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Edit_Note_View_Body.dart';

class EditNoteView extends StatelessWidget{
  const EditNoteView ({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: EditNoteViewBody() ,
    );

  }
}