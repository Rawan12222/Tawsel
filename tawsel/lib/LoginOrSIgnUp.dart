import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tawsel/Login.dart';
import 'package:tawsel/SignUp.dart';
import 'package:tawsel/customButton.dart';

import 'const.dart';


class LoginOrSignUpPage extends StatefulWidget {
  const LoginOrSignUpPage({super.key});

  @override
  State<LoginOrSignUpPage> createState() => _LoginOrSignUpPageState();
}

class _LoginOrSignUpPageState extends State<LoginOrSignUpPage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    return Scaffold(
      backgroundColor: Colors.black,

      body: SingleChildScrollView(child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Image.asset("assets/images/bigBurger.png"),

        Padding(
          padding: const EdgeInsets.only(left: 29.0),
          child: Text("Big Kitchen Burger", style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.w700)),),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 29.0),
          child: Text("At your Dinning Table", style: GoogleFonts.inter(textStyle: TextStyle(color:kprimaryColor , fontSize: 24, fontWeight: FontWeight.w700)),),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB( 29.0,12,0,0),
          child: Text("Make an order of any food of choice", style: GoogleFonts.inter(textStyle: TextStyle(color:Colors.white , fontSize: 10, fontWeight: FontWeight.w700)),),
        ),

        Padding(
          padding: const EdgeInsets.only(top:43),
          child: Center(
            child: Container(
              height: 54,
              width: 312,
              child: CustomButton(title: "Login",onPressed:()=> Get.to(LoginPage()),)),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 21),
          child: Center(
            child: Container(
                
                    height: 54,
                    width: 312,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: kActiveIconColor)
                    ),
                    child: TextButton(
                     onPressed: ()=> Get.to(SignUp()),
                    child: Text("Sign Up", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 26,fontWeight: FontWeight.w700, color: Colors.white)),)
                    )
              ),
          ),
        ),

      ],),),


    );
  }
}