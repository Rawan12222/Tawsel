import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Driver extends StatefulWidget {
  const Driver({super.key});

  @override
  State<Driver> createState() => _Driver();
}

class _Driver extends State<Driver> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Orders", style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 34, fontWeight: FontWeight.w700,color: Colors.black)),),
        bottom: TabBar(
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(50), // Creates border
               color: Colors.orange),
               isScrollable: true,
          tabs: [
            Tab(text: "Request",),
            Tab(text: "Completed",),
            Tab(text: "Canceled",)

            

          ]),
      ),

      body: TabBarView(
        children: [
          Text("No Requsets!"),
          Text("Nothing!"),
          Text("Nothing!")
        ],
         
    ),
      

            /*TabBar(
              
               indicator: BoxDecoration(
               borderRadius: BorderRadius.circular(50), // Creates border
               color: Colors.orange),
               isScrollable: true,
              
              tabs: [

              Container(
                        height: 31,
                        width: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)
                        ),
                        child: TextButton(
                        onPressed: (){}, 
                        child: Text("Requset", style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.black)),)
                        )
                      ),

                      Container(
                        height: 31,
                        width: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)
                        ),
                        child: TextButton(
                        onPressed: (){}, 
                        child: Text("Completed", style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.black)),)
                        )
                      ),
                      Container(
                        height: 31,
                        width: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)
                        ),
                        child: TextButton(
                        onPressed: (){}, 
                        child: Text("Canceled", style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.black)),)
                        )
                      ),


            ]*/
          
      ),
    );
  }
}