import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tawsel/OrderDetailsDriver.dart';

class Driver extends StatefulWidget {
  const Driver({super.key});

  @override
  State<Driver> createState() => _Driver();
}

class _Driver extends State<Driver> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
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
            Container(
              height: 30,
              width: 98.53,
              child: Tab(text: "Request",)),
            Container(
              height: 30,
              width: 98.53,
              child: Tab(text: "Completed",)),
            Container(
              height: 30,
              width: 98.53,
              child: Tab(text: "Canceled",))

            

          ]),
      ),

      body: 
      Stack(children: [
        TabBarView(
        children: [
          /////////////////////////////Request tab/////////////////////////////////////
          Container(
            
            
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
            
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: _requestCards(
                      name: "Adel Kanaan", 
                      date: "25/4/2024", 
                      time: "01:30 PM", 
                      address: "saudi arabia dammam king khalid"
                    ),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: _requestCards(
                      name: "Adel Kanaan", 
                      date: "25/4/2024", 
                      time: "01:30 PM", 
                      address: "saudi arabia dammam king khalid"
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: _requestCards(
                      name: "Adel Kanaan", 
                      date: "25/4/2024", 
                      time: "01:30 PM", 
                      address: "saudi arabia dammam king khalid"
                    ),
                  ),
            
                ],
              ),
            ),
          
          //////////////////////////Completed tab//////////////////////////////////
          Container(
            child: Column(children: [

              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: _completeCards(
                  name: "Adel Kanaan", 
                  date: "25/4/2024", 
                  time: "01:30 PM", 
                  address: "saudi arabia dammam king khalid"
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: _completeCards(
                  name: "Jasem", 
                  date: "25/4/2024", 
                  time: "03:50 PM", 
                  address: "saudi arabia dammam king khalid"
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: _completeCards(
                  name: "Mohamed", 
                  date: "25/4/2024", 
                  time: "10:21 PM", 
                  address: "saudi arabia dammam king khalid"
                ),
              )
              
 
            ],),
          ),
          ///////////////////////////Canceled tab/////////////////////////////////////////
          
          Container(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: _cancelCards(
                  name: "Adel Kanaan", 
                  date: "25/4/2024", 
                  time: "01:30 PM", 
                  address: "saudi arabia dammam king khalid"
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: _cancelCards(
                  name: "Jasem", 
                  date: "25/4/2024", 
                  time: "03:50 PM", 
                  address: "saudi arabia dammam king khalid"
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: _cancelCards(
                  name: "Mohamed", 
                  date: "25/4/2024", 
                  time: "10:21 PM", 
                  address: "saudi arabia dammam king khalid"
                ),
              )


            ],),
          )


        ],
         
    ),
      ],)
      

          
      ),
    );
  }

Container _requestCards({required String name, required String date, required String time, required String address }){
    return Container(
                  height: 123,
                  width: 335,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromRGBO(241, 241, 241, 1),
                    boxShadow: [BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 4,
                          spreadRadius: 0,
                          color: Color.fromRGBO(0,0,0, 0.25)
                        )]
                  ),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left:12.0),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,13,0,0),
                        child: Text(name, style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w500,),),
                      ),
                    
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Row(children: [
                          Text(date, style: GoogleFonts.tajawal(fontSize: 12, fontWeight: FontWeight.w500),),
                          Padding(
                            padding: const EdgeInsets.only(left:13.0),
                            child: Text(time, style: GoogleFonts.tajawal(fontSize: 12,fontWeight: FontWeight.w500),),
                          ),
                          
                        ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:5.0),
                        child: Text("Address", style: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:5.0),
                        child: SizedBox(
                          height: 21,
                          width: 112,
                          child: Text(address , style: GoogleFonts.inter(fontSize: 10, fontWeight: FontWeight.w400),),
                        ),
                      )
                    
                                      ],),
                    ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(120,31,0,0),
                    child: Column(children: [
                      Container(
                        height: 26.73,
                        width: 72,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextButton(
                          onPressed: ()=> Get.to(OrderDetailsDriver()), 
                          child: Text("Accept", style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:7.27),
                        child: Container(
                          height: 26.73,
                          width: 72,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: TextButton(
                            onPressed: (){}, 
                            child: Text("Cancel", style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),)),
                        ),
                      ),
                  
                  
                    ],),
                  )



                  ],)
                );
  }

  Container _completeCards({required String name, required String date, required String time, required String address}){
    return Container(
                  height: 123,
                  width: 335,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromRGBO(241, 241, 241, 1),
                    boxShadow: [BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 4,
                          spreadRadius: 0,
                          color: Color.fromRGBO(0,0,0, 0.25)
                        )]
                  ),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left:12.0),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,13,0,0),
                        child: Text(name, style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w500,),),
                      ),
                    
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Row(children: [
                          Text(date, style: GoogleFonts.tajawal(fontSize: 12, fontWeight: FontWeight.w500),),
                          Padding(
                            padding: const EdgeInsets.only(left:13.0),
                            child: Text(time, style: GoogleFonts.tajawal(fontSize: 12,fontWeight: FontWeight.w500),),
                          ),
                          
                        ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:5.0),
                        child: Text("Address", style: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:5.0),
                        child: SizedBox(
                          height: 21,
                          width: 112,
                          child: Text( address , style: GoogleFonts.inter(fontSize: 10, fontWeight: FontWeight.w400),),
                        ),
                      )
                    
                                      ],),
                    ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(120,13,0,0),
                    child: Column(children: [
                      Text("Completed", style:  GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.green ,decoration:TextDecoration.underline,decorationColor: Colors.green ),),
                      Padding(
                        padding: const EdgeInsets.only(top:50),
                        child: Container(
                          height: 26.73,
                          width: 72,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: TextButton(
                            onPressed: (){}, 
                            child: Text("Delete", style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),)),
                        ),
                      ),
                  
                  
                    ],),
                  )



                  ],)
                );

  }


  Container _cancelCards({required String name, required String date, required String time, required String address}){
    return Container(
                  height: 123,
                  width: 335,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromRGBO(241, 241, 241, 1),
                    boxShadow: [BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 4,
                          spreadRadius: 0,
                          color: Color.fromRGBO(0,0,0, 0.25)
                        )]
                  ),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left:12.0),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,13,0,0),
                        child: Text(name, style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w500,),),
                      ),
                    
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Row(children: [
                          Text(date, style: GoogleFonts.tajawal(fontSize: 12, fontWeight: FontWeight.w500),),
                          Padding(
                            padding: const EdgeInsets.only(left:13.0),
                            child: Text(time, style: GoogleFonts.tajawal(fontSize: 12,fontWeight: FontWeight.w500),),
                          ),
                          
                        ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:5.0),
                        child: Text("Address", style: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:5.0),
                        child: SizedBox(
                          height: 21,
                          width: 112,
                          child: Text( address , style: GoogleFonts.inter(fontSize: 10, fontWeight: FontWeight.w400),),
                        ),
                      )
                    
                                      ],),
                    ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(120,13,0,0),
                    child: Column(children: [
                      Text("Canceled", style:  GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.red ,decoration:TextDecoration.underline,decorationColor: Colors.red ),),
                      Padding(
                        padding: const EdgeInsets.only(top:50),
                        child: Container(
                          height: 26.73,
                          width: 72,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: TextButton(
                            onPressed: (){}, 
                            child: Text("Delete", style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),)),
                        ),
                      ),
                  
                  
                    ],),
                  )



                  ],)
                );

  }



}