import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CanceledOrder extends StatefulWidget {
  const CanceledOrder({super.key});

  @override
  State<CanceledOrder> createState() => _CanceledOrderState();
}

class _CanceledOrderState extends State<CanceledOrder> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    
    return Scaffold(

      appBar: AppBar(
        title: Text("Order Details", style: GoogleFonts.tajawal(fontSize: 34, fontWeight: FontWeight.w700, color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),


      body: SingleChildScrollView(child:Column(
      
       mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(26,30,0,0),
          child: Text("Order №1947034", style: GoogleFonts.tajawal(fontSize: 16, fontWeight: FontWeight.w900),),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(26,50,15,0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("3 items", style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w500)),
            Text("Caneled",style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.red),),
          ],),
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
          padding: const EdgeInsets.fromLTRB(115,101,0,50),
          child: Container(
            height: 48,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(24)
            ),
            child:TextButton(
              onPressed: (){}, 
              child: Text("Reorder", style:  GoogleFonts.tajawal(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),))
            ),
        ),
      
      ],))

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
          ],)
  
        );



  }


}