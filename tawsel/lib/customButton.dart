import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'const.dart';

class CustomButton extends StatelessWidget {

  final void Function()? onPressed;
  final String title;


  const CustomButton({super.key, this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      
                height: 48,
                width: 343,
                decoration: BoxDecoration(
                  color: kprimaryColor,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: TextButton(
                 onPressed: onPressed,
                child: Text(title, style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 255, 255, 1))),)
                )
    );
  }
}