import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tawsel/EntryField.dart';
import 'package:tawsel/TextField.dart';

import 'customButton.dart';

class OTPpage extends StatefulWidget {
  const OTPpage({super.key});

  @override
  State<OTPpage> createState() => _OTPpageState();
}

class _OTPpageState extends State<OTPpage> {
  @override
  Widget build(BuildContext context) {
        final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(152,220,0,0),
            child: Text("OTP",style:GoogleFonts.tajawal(textStyle:( TextStyle(fontSize: 50, fontWeight: FontWeight.w700))),),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(23,61,0,0),
            child: TTextField(
              labeltext: "OTP", 
              ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(39,61,0,0),
            child: Container(
              height: 54,
              width: 312,
              
              
              child: CustomButton(title: "Login",)),
          )


        ],),
      ),
    );
  }
}