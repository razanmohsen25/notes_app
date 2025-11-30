
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';


class CustomTextField extends StatelessWidget{
  const CustomTextField ({Key? key, required this.hint, this.maxLines =1 }) : super (key: key);

  final String hint ;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
   return TextField(
     cursorColor: KPrimaryColor,
     maxLines: maxLines,
     decoration: InputDecoration(
       hintText: hint,
       hintStyle: TextStyle(color: KPrimaryColor),
       border: buildBorder(),
       enabledBorder: buildBorder(),
       focusedBorder: buildBorder(KPrimaryColor),
     ),
   );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
       borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.white),
     );
  }
}