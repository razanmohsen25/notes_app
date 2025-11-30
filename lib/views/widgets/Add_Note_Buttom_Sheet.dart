import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/views/widgets/Custom_Text_field.dart';
import 'package:notes/views/widgets/constants.dart';

import 'Custom_Button.dart';

class AddNoteButtomSheet extends StatelessWidget{
  const AddNoteButtomSheet ({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(

      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children:const [
            SizedBox(height: 24,),
            CustomTextField(hint: 'Title',),
            SizedBox(height: 24,),
            CustomTextField(hint: 'content',maxLines: 5,),
            SizedBox(height: 80,),
            CustomButton(),
            SizedBox(height: 24,),
        
          ],
        ),
      ),
    );
  }
}
