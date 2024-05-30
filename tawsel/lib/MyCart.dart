import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tawsel/DelivOrRest.dart';
import 'package:tawsel/customButton.dart';


class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Padding(
            padding: const EdgeInsets.only(left:340.0),
            child: const Icon(Icons.search ,color:Colors.black ),
          ),
          onPressed: (){},
        ),
      ),
      key: scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.fromLTRB(14,106,0,0),
              child: Text("My Cart", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 34, fontWeight: FontWeight.w700)),),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16,23,0,0),
              child: _containerFood(
                image: "assets/images/burger2.png", 
                foodName: "Beef Juicy Burger", 
                size: "L", 
                price: "51\$"),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16,24,0,0),
              child: _containerFood(
                image: "assets/images/burger.png", 
                foodName: "Beef Juicy Burger", 
                size: "L", 
                price: "30\$"),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16,24,0,0),
              child: _containerFood(
                image: "assets/images/burger4.png", 
                foodName: "Beef Juicy Burger", 
                size: "M", 
                price: "43\$"),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16.64,46.64,0,0),
              child: Container(
                height:37.42 ,
                width: 356.72,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:330.0),
                  child:InkWell(child: Icon(Icons.arrow_circle_right_rounded,color: Colors.black,)
                  ,onTap:(){scaffoldKey.currentState?.showBottomSheet((context) => 
                     Container(
                      height: 448 ,
                      width: 360,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(34)
                      ),
                     child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15,50.21,0,0),
                            child: Container(
                                        height: 34.76 ,
                                        width: 329.28,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(15)
                                        ),
                                        child:  Padding(
                                          padding: const EdgeInsets.only(left:300, ),
                                          child: Icon(Icons.arrow_circle_right_rounded,color: Colors.black,),
                                        ),
                                      ),
                          ),


                          Padding(
                            padding: const EdgeInsets.fromLTRB(15,31.03,0,0),
                            child: Text("Your Promo Codes", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w900)),),
                          ),


                          Padding(
                            padding: const EdgeInsets.fromLTRB(29,17,0,0),
                            child: _containerOffer(
                              image: "assets/images/10%Offer.png", 
                              offerName: "Personal offer", 
                              code: "112254"),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(29,23.18,0,0),
                            child: _containerOffer(
                              image: "assets/images/15%Offer.png", 
                              offerName: "Summer Sale", 
                              code: "76764"),
                          ),


                          Padding(
                            padding: const EdgeInsets.fromLTRB(29,23.18,0,0),
                            child: _containerOffer(
                              image: "assets/images/22%Offer.png", 
                              offerName: "Personal Offer", 
                              code: "87697"),
                          ),




                          
                          

                ],),
              )
              );} ,
                  )),
                ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(340,28.94,0,0),
              child: Text("124\$"),
            ),

            Padding(
              padding: const EdgeInsets.only(top:19.98),
              child: Center(child: CustomButton(title: "Check Out",
              onPressed: ()=> Get.to(DelivOrRest()),
              )),
            )
            

            


          ],
        ),
      ),
    );
  }

  Container _containerFood({required String image, required String foodName, required String size, required String price}){
    return Container(
              height: 104,
              width: 351,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Container(
                  height: 96,
                  width: 104,
                  child: Image.asset(image)),
                Padding(
                  padding: const EdgeInsets.fromLTRB(13.68,0,0,0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(foodName),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(34.71,0,0,0),
                        child: Text(size, style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, )),),
                      ),
                       Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 36,
                                width: 36.84,
                            
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [BoxShadow(
                                    offset: Offset(0, 4),
                                    blurRadius: 8,
                                    spreadRadius: 0,
                                    color: Color.fromRGBO(0, 0, 0, 0.1)
                                  )]
                                ),
                                child: Icon(Icons.remove)),
                            ),


                            Text("1"),


                             Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 36,
                                width: 36.84,
                            
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [BoxShadow(
                                    offset: Offset(0, 4),
                                    blurRadius: 8,
                                    spreadRadius: 0,
                                    color: Color.fromRGBO(0, 0, 0, 0.1)
                                  )]
                                ),
                                child: Icon(Icons.add)),
                            ),

                            Row(children: [
                              Padding(
                              padding: const EdgeInsets.fromLTRB(84.86,0,0,0),
                              child: Text("$price"),
                            )
                            ],)
                      
                            
                        ],
                      )
                    ],
                  ),
                )
              ],),
            );
  }

  Container _containerOffer ({required String image, required String offerName, required String code}){
    return Container(
                            height: 77.24,
                            width: 329.28,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Row(children: [
                              Image.asset(image),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(15.92,21.24,0,15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Text(offerName),
                                  Text("$code")
                                ],),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:30.16, top:31.86 ),
                                child: Container(
                                  height: 34.76,
                                  width: 89.28,
                                  child: CustomButton(title: "Apply")),
                              )
                            ],),
                          );
  }


}