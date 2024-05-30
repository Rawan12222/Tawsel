import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tawsel/TextField.dart';
import 'package:tawsel/customButton.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({super.key});

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    return Scaffold(

      body: SingleChildScrollView(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(51,106,0,0),
          child: Text("Forgot password",style:GoogleFonts.tajawal(textStyle:( TextStyle(fontSize: 40, fontWeight: FontWeight.w700)))),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(81,55,0,0),
          child: Text("Please, enter your phone number ",style:GoogleFonts.tajawal(textStyle:( TextStyle(fontSize: 16, fontWeight: FontWeight.w500)))),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(24,31,0,0),
          child: TTextField(labeltext: "+966"),
        ),

        Container(
          height: 54,
          width: 312,
          child: CustomButton(title: "Send",)),

        Padding(
          padding: const EdgeInsets.fromLTRB(121,102,0,0),
          child: Text("Please, enter OTP code",style: GoogleFonts.tajawal(fontSize: 14,fontWeight: FontWeight.w500),),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(24,11,0,0),
          child: TTextField(labeltext: "2585"),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(39,37,0,0),
          child: Container(
            height: 54,
            width: 312,
            child: CustomButton(title: "Login")),
        )
        


      ],),),


    );
  }
}