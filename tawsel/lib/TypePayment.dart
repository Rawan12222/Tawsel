import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawsel/PaymentCards.dart';

import 'customButton.dart';


class TypePayment extends StatefulWidget {
  const TypePayment({super.key});

  @override
  State<TypePayment> createState() => _TypePaymentState();
}

class _TypePaymentState extends State<TypePayment> {
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
            child: CustomButton(title: "Cash", onPressed: () {},)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(39,441,0,0),
          child: Container(
            height: 54,
            width: 312,
            child: CustomButton(title: "Payment Card", onPressed: ()=>Get.to(PaymentCards()),)),
        )
      ],)
      ,)
    );
  }
}