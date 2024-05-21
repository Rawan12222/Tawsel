import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextField extends StatelessWidget {

  final String labeltext;
  //final TextEditingController myController;


  const TTextField({super.key, required this.labeltext, });

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 64,
                width: 343,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      spreadRadius: 0,
                      blurRadius: 8,
                      offset: Offset(0, 1), // changes position of shadow
                       ),
                         ],
                ),
                 child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: labeltext,
                      suffixIcon: Icon(Icons.check,color: Color.fromRGBO(42, 169, 82, 1),size: 19,),
                      filled: true,
                      fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                      labelStyle:GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color.fromRGBO(155, 155, 155, 1))) , 
                    ),
                  ),
                  
              );
  }
}