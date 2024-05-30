import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tawsel/Components.dart';
import 'package:tawsel/MyCart.dart';
import 'package:tawsel/customButton.dart';
import 'package:tawsel/favorites.dart';

import 'const.dart';


class OrderCard extends StatefulWidget {
  const OrderCard({super.key});

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    
    return Scaffold(
      key: scaffoldKey,

      
      backgroundColor: kprimaryColor,
      body: SingleChildScrollView(
        child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0,155,0,0),
            child: Container(
              height: 150,
              width: 100,
              child: Image.asset("assets/images/leftBurger.png"),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(90,90,0,0),
            child: Container(
              height: 245,
              width: 235,
              child: Image.asset("assets/images/burger2.png"),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(300,162,0,0),
            child: Container(
              height: 111,
              width: 158,
              child: Image.asset("assets/images/rightBurger.png"),
            ),
          ),

          

          Padding(
            padding: const EdgeInsets.fromLTRB(0,385,0,0),
            child: Container(
              height: 500,
              width: 460,
              child: Image.asset("assets/images/black.png")),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(18,400,0,0),
            child: Text("Beef Juicy Burger", style: GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.w600,color: Colors.white),),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(22,451,0,0),
            child: Container(
              height: 15,
              width: 91,
              child: Image.asset("assets/images/stars.png")),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(225,432,0,0),
            child: Text("20\$", style: GoogleFonts.inter(fontSize: 40, fontWeight: FontWeight.w700,color: Colors.white),),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(18,503,0,0),
            child: InkWell(
              child: Container(
              height: 40,
              width: 138,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left:12.0),
                  child: Text("Size", style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:70.0),
                  child: Icon(Icons.keyboard_arrow_down),
                )
              ],)
            ),
            onTap: (){scaffoldKey.currentState?.showBottomSheet((context) => 

            Container(
              height: 346.25 ,
              width: 396.75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,33.88,0,0),
                  child: Text("Select size", style: GoogleFonts.tajawal(fontSize: 18, fontWeight: FontWeight.w900),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.93,19.39,0,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Container(
                      height: 37.64,
                      width: 105.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white
                      ),
                      child: TextButton(
                      onPressed: (){}, 
                      child: Text("XS", style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.black),)),
                    ),

                    Container(
                      height: 37.64,
                      width: 105.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white
                      ),
                      child: TextButton(
                      onPressed: (){}, 
                      child: Text("S", style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.black),)),
                    ),

                    Container(
                      height: 37.64,
                      width: 105.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white
                      ),
                      child: TextButton(
                      onPressed: (){}, 
                      child: Text("M", style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.black),)),
                    ),
                  ],),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(16.93,15.05,0,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                
                    children: [
                
                    Container(
                        height: 37.64,
                        width: 105.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white
                        ),
                        child: TextButton(
                        onPressed: (){}, 
                        child: Text("L", style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.black),)),
                      ),
                
                      Padding(
                        padding: const EdgeInsets.only(left: 30.27),
                        child: Container(
                          height: 37.64,
                          width: 105.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white
                          ),
                          child: TextButton(
                          onPressed: (){}, 
                          child: Text("XL", style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.black),)),
                        ),
                      ),
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15.87,37.64,324.88,0),
                  child: Text("Size info", style: GoogleFonts.tajawal(fontSize: 16, fontWeight: FontWeight.w400),),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0,46.03,0,0),
                  child: Container(
                    height: 55.51,
                    width: 320.89,
                    child: CustomButton(title: "Apply")),
                )


              ],),
            ),
            );},
            )
          ),


          Padding(
            padding: const EdgeInsets.fromLTRB(167,507,0,0),
            child: InkWell(
              onTap: ()=> Get.to(Favorites()),
              child: Container(
              height: 36,
              width: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white
              ),
              child: Icon(Icons.favorite_border_sharp,color: Colors.grey,)),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(213,503,0,0),
            child: InkWell(
              child: Container(
              height: 40,
              width: 137,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left:12.0),
                  child: Text("Components"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Icon(Icons.keyboard_arrow_down),
                )
              ],),
            ),
            onTap: ()=> Get.to(Components()),
            )
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20,585,0,0),
            child: Text("Description", style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(22,618,0,0),
            child: SizedBox(
              height: 85,
              width: 338,
              child: Text("Juicy, big, loaded with toppings of my choice." "High quality beef medium to well with cheese and bacon on a multigrain bun." "A huge single or triple burger with all the fixings, cheese, lettuce, tomato, onions and special sauce or mayonnaise!",
               style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(34,769,0,0),
            child: Container(
              height: 55.51,
              width: 320.89,
              child: CustomButton(title: "Place Order",onPressed: () => Get.to(MyCart()),)),
          )
          


          
        ],
      ),
      )
    );
  }
}