import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/views/widgets/Custom_Text_field.dart';
import 'package:notes/views/widgets/constants.dart';

import 'Custom_Button.dart';

class AddNoteButtomSheet extends StatelessWidget{
  const AddNoteButtomSheet ({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey<FormState> formKey= GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled ;

  String? title , subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
         const SizedBox(height: 24,),
          CustomTextField(
            onSaved: (value)
            {
              title = value;
            },
            hint: 'Title',),
          const SizedBox(height: 24,),
          CustomTextField(
            onSaved: (value)
            {
              subTitle = value;
            },
            hint: 'content',maxLines: 5,),
         const SizedBox(height: 80,),
          CustomButton(
            onTap: ()
            {
              if(formKey.currentState!. validate())
                {
                  formKey.currentState!.save();
                }else{
                autovalidateMode = AutovalidateMode.always;
                setState(() {

                });
              }
            },
          ),
          const SizedBox(height: 24,),
      
        ],
      ),
    );
  }
}
