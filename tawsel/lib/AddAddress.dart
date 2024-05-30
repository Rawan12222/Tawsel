import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tawsel/TextField.dart';
import 'package:tawsel/address.dart';

import 'customButton.dart';


class AddAddress extends StatefulWidget {
  const AddAddress({super.key});

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
  
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.2,
        backgroundColor:  Colors.white,
        title: Text("Adding Address",style: GoogleFonts.tajawal(fontSize:18, fontWeight: FontWeight.w900,color: Colors.black ),),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(23,35,0,0),
            child: TTextField(labeltext: "Full Name"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(23,20,0,0),
            child: TTextField(labeltext: "Address"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(23,20,0,0),
            child: TTextField(labeltext: "City"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(23,20,0,0),
            child: TTextField(labeltext: "State/Province/Region"),
          ),
          
          Padding(
            padding: const EdgeInsets.fromLTRB(23,20,0,0),
            child: TTextField(labeltext: "Zip Code (Postal Code)"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(23,20,0,0),
            child: TTextField(labeltext: "Country"),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(17,111,0,0),
            child:  CustomButton(title: "Save Address",onPressed: ()=> Get.to(Address()),)
          )


        ],),
      ),
    );
  }
}