import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tawsel/OrderDriver.dart';
import 'package:tawsel/customButton.dart';

class OrderDetailsDriver extends StatefulWidget {
  const OrderDetailsDriver({super.key});

  @override
  State<OrderDetailsDriver> createState() => _OrderDetailsDriverState();
}

class _OrderDetailsDriverState extends State<OrderDetailsDriver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text("Order Details", style: GoogleFonts.tajawal(fontSize: 34, fontWeight: FontWeight.w700,color:  Colors.black),),
      ),

      body: SingleChildScrollView(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          Padding(
            padding: const EdgeInsets.fromLTRB(26,30,0,0),
            child: Row(children: [
              Text("Order №1947034" , style: GoogleFonts.tajawal(fontSize: 16,fontWeight: FontWeight.w900),),
              Padding(
                padding: const EdgeInsets.only(left:80.0),
                child: Text("25-04-2024" , style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w400),),
              ),
              Padding(
                padding: const EdgeInsets.only(left:23.0),
                child: Text("01 : 30 PM", style: GoogleFonts.tajawal(fontSize: 12, fontWeight: FontWeight.w500),),
              )
            
            ],),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(26,50,0,0),
            child: Text("3 items", style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w500),),
          ),

          Padding(
          padding: const EdgeInsets.fromLTRB(26,22,0,0),
          child: _items(
            image: "assets/images/burger2.png", 
            foodName: "Beef Juicy Burger", 
            size: "L", 
            quantity: "1", 
            price: "51"),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(26,24,0,0),
          child: _items(
            image: "assets/images/burger.png", 
            foodName: "Beef Juicy Burger", 
            size: "L", 
            quantity: "1", 
            price: "30"),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(26,24,0,0),
          child: _items(
            image: "assets/images/burger4.png", 
            foodName: "Beef Juicy Burger", 
            size: "M", 
            quantity: "1", 
            price: "43"),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(13,34,0,0),
          child: Text("Order information", style: GoogleFonts.tajawal(fontSize: 16, fontWeight: FontWeight.w700),),
        ),

         Padding(
           padding: const EdgeInsets.only(top:15),
           child: Row(children: [
            Padding(
            padding: const EdgeInsets.only(left:16),
            child: Text("Shipping Address:", style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w400),),
                 ),
         
                 Padding(
            padding: const EdgeInsets.only(left:28),
            child: SizedBox(
              height: 40,
              width: 134,
              child: Text("saudi arabia dammam king khalid", style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w400),),
            ),
                 ),
           ],),
         ),

         Padding(
           padding: const EdgeInsets.fromLTRB(15,20,0,0),
           child: Row(children: [
            Text("Total Amount:", style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w400),),
            Padding(
              padding: const EdgeInsets.only(left:49.0),
              child: Text("111.6", style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w500),),
            )
           ],),
         ),

         Padding(
           padding: const EdgeInsets.fromLTRB(109,40,0,23),
           child: Container(
            height: 48,
            width: 172,
            child: CustomButton(title: "Home", onPressed: ()=> Get.to(Driver()),)),
         )



        ],)
      

      
      ,),
    );
  }

  Container _items({required String image, required String foodName, required String size, required String quantity, required String price}){
    return Container(
          height: 104,
          width: 343,
          decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [BoxShadow(
                  offset: Offset(0, 1),
                  blurRadius: 25,
                  spreadRadius: 0,
                  color: Color.fromRGBO(0,0,0, 0.08)
                )]
              ),
          child: Row(children: [
            Container(
              height: 96,
              width: 104,
              
              child: Image.asset(image),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(13,11,0,0),
                child: Text(foodName, style:  GoogleFonts.tajawal(fontSize: 16, fontWeight: FontWeight.w900),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30,21,0,0),
                child: Text(size,  style:  GoogleFonts.tajawal(fontSize: 11, fontWeight: FontWeight.w400),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13,11,0,0),
                child: Row(children: [
                  Text("count:  ",  style:  GoogleFonts.tajawal(fontSize: 11, fontWeight: FontWeight.w400, color:  Colors.grey),),
                  Text(quantity,  style:  GoogleFonts.tajawal(fontSize: 11, fontWeight: FontWeight.w400),)
                ],),
              )
            ],),
            Padding(
              padding: const EdgeInsets.fromLTRB(64,70,0,0),
              child: Text(price,  style:  GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w500),),
            )
          ],),
        );



  }
}