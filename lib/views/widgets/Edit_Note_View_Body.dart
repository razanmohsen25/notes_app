
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/views/widgets/Custom_app_Bar.dart';

class EditNoteViewBody extends StatelessWidget{
  const EditNoteViewBody ({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(

        children:const [
          SizedBox(height: 50,),
          CustomAppBar(title: 'Edit Note', icon: Icons.check,


          ),
        ],
      ),
    );

  }
}