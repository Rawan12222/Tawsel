import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EntryField extends StatelessWidget {

  final String labeltext;
  final TextEditingController myController;


  const EntryField({super.key, required this.labeltext, required this.myController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      decoration: InputDecoration(
        labelText: labeltext,
        filled: true,
        fillColor: Colors.white,
        enabled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: new BorderSide(color: Colors.white),
          borderRadius: new BorderRadius.circular(10),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: new BorderSide(color: Colors.white),
          borderRadius: new BorderRadius.circular(10),
        ),
      ),
      keyboardType: TextInputType.emailAddress,
      
    );
  }
}