import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tawsel/CanceledOrder.dart';
import 'package:tawsel/OrderDetails.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;

    return DefaultTabController(length: 3, child:  Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(14,18,0,0),
          child: Text("My Orders", style: GoogleFonts.tajawal(fontSize: 34,fontWeight: FontWeight.w700, color: Colors.black),),
        ),
          bottom:  TabBar(
              indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50), // Creates border
                 color: Colors.orange),
                 isScrollable: true,
              tabs: [
               
               Container(
                height: 30,
                width: 100,
                child: Tab(child:Text("Delivered", style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w500),),)),
              
              Container(
                height: 30,
                width: 100,
                child: Tab(child:  Text("Proccessing", style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w500),),
                 ),
              ),

              Container(
                height: 30,
                width: 100,
                child: Tab(child: Text("Canceled", style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w500),),
                 ),
              )
            
            
            ]),
          
          
          ),
      body: TabBarView(children: [

        ///////////////////////////Delivered tab////////////////////////////////////
        Padding(
          padding: const EdgeInsets.fromLTRB(23,30,0,0),
          child: Container(
            height: 540,
            width: 344,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
              _deliveredCard(
                order: "Order №1947034", 
                quantity: "3", 
                price: "112\$"),
        
              _deliveredCard(
                order: "Order №1947034", 
                quantity: "3", 
                price: "112\$"),
        
              _deliveredCard(
                order: "Order №1947034", 
                quantity: "3", 
                price: "112\$"),
        
        
            ],),
          ),
        ),

////////////////////////////////Proccessing tab///////////////////////////////////////

        Container(

          //height: 650,
          child: SingleChildScrollView(child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 17, top:24 ),
              child: Container(
                height: 398 ,
                width: 362,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
        
        
                    _proccesOrder(
                      image: "assets/images/boxx.png", 
                      step: "Confirmed Order", 
                      time: "11 : 45 PM"),
        
                    _proccesOrder(
                      image: "assets/images/cooking.png", 
                      step: "in kitchen", 
                      time: "11 : 50 PM"),
                    
                    _proccesOrder(
                      image: "assets/images/truck.png" , 
                      step: "Delivery Order", 
                      time: "12 : 10 AM"),
        
                    _proccesOrder(
                      image: "assets/images/man.png", 
                      step: "The order has been delivered", 
                      time: "12 : 25 PM"),
        
        
                
        
        
                ],),
              ),
            ),

            Padding(
            padding: const EdgeInsets.only(left: 97, top: 84.55),
            child: Container(
                  height: 50.55,
                  width: 190,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(241, 21, 21, 1),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: TextButton(
                  onPressed: (){}, 
                  child: Text("Canceled", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 255, 255, 1))),)
                  )
                ),
          ),

          ],),)
        ),

          

///////////////////////////////Canceled tab//////////////////////////////////////

        Padding(
          padding: const EdgeInsets.fromLTRB(23,30,0,0),
          child: Container(
            height: 540,
            width: 344,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
              _canceledCard(
                order: "Order №1947034", 
                quantity: "3", 
                price: "112\$"),
        
              _canceledCard(
                order: "Order №1947034", 
                quantity: "3", 
                price: "112\$"),
        
              _canceledCard(
                order: "Order №1947034", 
                quantity: "3", 
                price: "112\$"),
        
        
            ],),
          ),
        ),


      ]),
    ),

    );
  }


  Container _deliveredCard({required String order, required String quantity, required String price}){
    return    Container(
      height: 164,
      width: 343,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 24,
            spreadRadius: 0,
            color: Color.fromRGBO(0, 0, 0, 0.12)
          )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(26,18,0,0),
          child: Text(order),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(93,37,0,0),
          child: Row(children: [
            Text(quantity),
            Padding(
              padding: const EdgeInsets.only(left:202.0),
              child: Text(price),
            )
          ],),
        ),
        Row(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(19,15,0,0),
            child: Container(
              height: 36,
              width: 98,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(19),
              ),
            child: TextButton(
              onPressed: ()=> Get.to(OrderDetails()), 
              child: Text("Details", style: GoogleFonts.tajawal(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),)),
                  ),
          ),
        Padding(
          padding: const EdgeInsets.fromLTRB(137,25,0,0),
          child: Text("Delivered",style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.green),),
        )
        ],)
      ],),
    );
  }

  Container _proccesOrder({required String image, required String step,required, required String time }){
    return Container(
      child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  SizedBox(
                    child: Row(children: [
                      Image.asset(image, scale:2,),

                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Text(step, style:GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 10,fontWeight: FontWeight.w600, color: Colors.black))),
                  ),
                    ],),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(time , style:  GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400, color: Colors.black),),
                  )

                ],),
    );
  }

    Container _canceledCard({required String order, required String quantity, required String price}){
    return    Container(
      height: 164,
      width: 343,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 24,
            spreadRadius: 0,
            color: Color.fromRGBO(0, 0, 0, 0.12)
          )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(26,18,0,0),
          child: Text(order),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(93,37,0,0),
          child: Row(children: [
            Text(quantity),
            Padding(
              padding: const EdgeInsets.only(left:202.0),
              child: Text(price),
            )
          ],),
        ),
        Row(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(19,15,0,0),
            child: Container(
              height: 36,
              width: 98,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(19),
              ),
            child: TextButton(
              onPressed: ()=> Get.to(CanceledOrder()), 
              child: Text("Details", style: GoogleFonts.tajawal(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),)),
                  ),
          ),
        Padding(
          padding: const EdgeInsets.fromLTRB(137,25,0,0),
          child: Text("Canceled",style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.red),),
        )
        ],)
      ],),
    );
  }


}