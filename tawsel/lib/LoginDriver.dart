import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tawsel/Login.dart';
import 'package:tawsel/customButton.dart';

import 'const.dart';

class LoginDriver extends StatefulWidget {
  const LoginDriver({super.key});

  @override
  State<LoginDriver> createState() => _LoginDriverState();
}

class _LoginDriverState extends State<LoginDriver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0,6,0,0),
            child: Image.asset("assets/images/bigBurger.png"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(29,487,0,0),
            child: Text("Big Kitchen Burger", style: GoogleFonts.inter(color: Colors.white,fontSize: 32, fontWeight: FontWeight.w700),),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(29,526,0,0),
            child: Text("At your Dinning Table", style: GoogleFonts.inter(color: kprimaryColor,fontSize: 24, fontWeight: FontWeight.w700),),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(29,567,0,0),
            child: Text("Make an order of any food of choice", style: GoogleFonts.inter(color: Colors.white,fontSize: 10, fontWeight: FontWeight.w700),),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(39,622,0,0),
            child: Container(
              height: 54,
              width: 312,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15)
              ),
              child: CustomButton(title: "Login", 
              onPressed: ()=> Get.to(LoginPage()),)),
          )

        ],
      ),
    );
  }
}