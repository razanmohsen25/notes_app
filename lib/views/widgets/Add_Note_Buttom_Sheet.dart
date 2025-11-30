import 'package:flutter/cupertino.dart';
import 'package:notes/views/widgets/Custom_Text_field.dart';

class AddNoteButtomSheet extends StatelessWidget{
  const AddNoteButtomSheet ({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(

      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(height: 24,),
          CustomTextField(),
        ],
      ),
    );

  }

}