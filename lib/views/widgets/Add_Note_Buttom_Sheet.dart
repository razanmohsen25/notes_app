import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes/cubits/Add_note-cubit/add_note_cubit.dart';
import 'package:notes/views/widgets/Custom_Text_field.dart';
import 'package:notes/constants.dart';

import 'Add_Note_Form.dart';
import 'Custom_Button.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({Key? key}) : super (key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure)
              {
                print('failed ${state.errMessage}');
              }
            if (state is AddNoteSuccess){
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
                child: AddNoteForm(),

            );
          },
        ),
      ),
    );
  }
}
