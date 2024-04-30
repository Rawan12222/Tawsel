import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'const.dart';

class NewHome extends StatefulWidget {
  const NewHome({super.key});

  @override
  State<NewHome> createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        child: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.only(left: 22, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(
              padding: const EdgeInsets.only( top: 39),
              child: Text("Lets Eat Something", style: GoogleFonts.inter(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w800,color: Colors.black))),
            ),
            
             Text("Delicious", style: GoogleFonts.inter(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w800,color: kprimaryColor))),
            
        
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                  height: 40,
                  width: 343,
                  decoration: BoxDecoration(
                    border: Border.all(color: kprimaryColor),
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white
                  ),
                  
                  child: TextField(
                        readOnly: true,
                          decoration: InputDecoration(
                            
                            border: InputBorder.none ,
                            labelText: "Search",
                            prefixIcon: Icon (Icons.search,size: 36,),
                            filled: true,
                            //fillColor:kBackgroundColor ,
                            labelStyle:GoogleFonts.inter(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color:kTextColor)) , 
                            
                          ),
                        ),),
            ),
        
        
            Padding(
              padding: const EdgeInsets.only(top: 26),
              child: Text("Category", style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color:Colors.black )),),
            ),

            


             Padding(
               padding: const EdgeInsets.only(top: 45),
               child: Container(
                  height: 103,
                  width: 344,
                  decoration: BoxDecoration(
                    color: kprimaryColor,
                    borderRadius: BorderRadius.circular(20)
                  ),
                         
                         
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(left:155 , top: 10),
                      child: Text("Get 20% Discount on everything you buy this week", style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w600, color: Colors.black)),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 200),
                      child: Container(
                              height: 25,
                              width: 98,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.black
                              ),
                              child: TextButton(
                              onPressed: (){}, 
                              child: Text("Buy Now", style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w600, color: Colors.white)),)
                              )
                            ),
                    ),
                  ],),
                ),
             ),



              Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 Column(
                    
                    children: [
                    _cards(
                    foodName: "Beef Juicy Burger", 
                    image: 'assets/images/burger.png' , 
                    aPrice: "20\$", 
                    bPrice: "25\$"
                    ),
                
                
                    _cards(
                    foodName: "Beef Juicy Burger", 
                    image: 'assets/images/burger3.png' , 
                    aPrice: "20\$", 
                    bPrice: "25\$"
                    ),
                  ],),
                

                  Column(children: [
                    _cards(
                    foodName: "Beef Juicy Burger", 
                    image: 'assets/images/burger2.png' , 
                    aPrice: "20\$", 
                    bPrice: "25\$"
                    ),
                  
                  
                    _cards(
                    foodName: "Beef Juicy Burger", 
                    image: 'assets/images/burger4.png' , 
                    aPrice: "20\$", 
                    bPrice: "25\$"
                    ),
                                  ],),
                  
              ],)
          
        
          ],),
        ),
        )



      )



    );
  }

  Container _cards ({required String foodName, required String image, required String aPrice,required String bPrice}){
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          height: 140,
                  width: 152,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 9,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      
                      children: [
                      Image.asset(image, scale: 2,),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text("Beef Juicy Burger", style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w600, color: Colors.white))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Row(children: [
                            Image.asset('assets/images/St.png',scale: 2),
                            Image.asset('assets/images/St.png',scale: 2),
                            Image.asset('assets/images/St.png',scale: 2),
                            Image.asset('assets/images/St.png',scale: 2),
                            Image.asset('assets/images/St.png',scale: 2)
                                            ],),
                          
                                      
                        Text("20\$", style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 10,fontWeight: FontWeight.w600, color: Colors.white))),
                        Text("20\$", style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 10,fontWeight: FontWeight.w600, color: Colors.white)))
                                      
                        ],),
                      )
                  
                    ],),
                  ),
                
        
          ),
      )
      );
  }


}