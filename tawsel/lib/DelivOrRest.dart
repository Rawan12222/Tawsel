import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawsel/TypePayment.dart';
import 'package:tawsel/customButton.dart';

class DelivOrRest extends StatefulWidget {
  const DelivOrRest({super.key});

  @override
  State<DelivOrRest> createState() => _DelivOrRestState();
}

class _DelivOrRestState extends State<DelivOrRest> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    return Scaffold(
      
      body: SingleChildScrollView(child: 
      Stack(children: [
        Image.asset("assets/images/backgraund.png"),
        
        Padding(
          padding: const EdgeInsets.fromLTRB(39,348,0,0),
          child: Container(
            height: 54,
            width: 312,
            child: CustomButton(title: "In Resturant", onPressed: () => Get.to(TypePayment()),)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(39,441,0,0),
          child: Container(
            height: 54,
            width: 312,
            child: CustomButton(title: "Delivery")),
        )
      ],)
      ,) ,

    );
  }
}