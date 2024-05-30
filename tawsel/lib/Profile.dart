import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tawsel/MyOrders.dart';
import 'package:tawsel/TextField.dart';
import 'package:tawsel/customButton.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;

    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    bool light = true;
    
   
    return Scaffold(
      key: scaffoldKey,
      

      body: SingleChildScrollView( child:
      
      Column(
        
        
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 106 , 0 , 0),
            child: Text("My profile", style: GoogleFonts.tajawal(textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 34, )),),
          ),

          Row(
            
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(17,17, 0 ,0 ),
                child: CircleAvatar(
                  radius: 30,
                  child: ClipOval(child: Image.asset("assets/images/profile.png",height: 101, width: 69, fit: BoxFit.cover,))
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(18,17,0,0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                       Text("Mohamed ", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Color.fromRGBO(34, 34, 34, 1))),),
                    
                    
                  ],
                ),
              )

              

            ],
          ),

          Column(children: [
            Container(
              height:72 ,
              width: 375,
              child: InkWell(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 19, 0, 0),
                              child: Text("My orders", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),),
                            ),
                            onTap: () => Get.to(MyOrders()),
                          ),
            ),

                        Container(
                          height:72 ,
              width: 375,
                          child: InkWell(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 19, 0, 0),
                              child: Text("Payment methods", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),),
                            ),
                          ),
                        ),

                        Container(
                          height:72 ,
              width: 375,
                          child: InkWell(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 19, 0, 0),
                              child: Text("Promocodes", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),),
                            ),
                          ),
                        ),

                        Container(
                          height:72 ,
              width: 375,
                          child: InkWell(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 19, 0, 0),
                              child: Text("My reviewes", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),),
                            ),
                          ),
                        ),

                        Container(
                          height:72 ,
              width: 375,
                          child: InkWell(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 19, 0, 0),
                              child: Text("Settings", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),),
                            ),
                            onTap: () {scaffoldKey.currentState?.showBottomSheet((context) => 
                            Container(
                              width: 390,
                              height: 543,
                              child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(126,26,0,0),
                                  child: Text("Password Change",style: GoogleFonts.tajawal(fontSize:18, fontWeight: FontWeight.w900 ),),
                                ),

                                Padding(
                                  padding: const EdgeInsets.fromLTRB(16,12.01,0,0),
                                  child: TTextField(labeltext: "Old Password"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(16,58.14,0,0),
                                  child: TTextField(labeltext: "New Password"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(16,26.68,0,0),
                                  child: TTextField(labeltext: "Repeat New Password"),
                                ),

                                Padding(
                                  padding: const EdgeInsets.fromLTRB(16,27.96,0,0),
                                  child: CustomButton(title: "Save Password",
                                  onPressed: () => Get.to(profile()),),
                                )


                              ],),
                            ));} ,
                          ),
                        ),

                        Container(
                          height:72 ,
              width: 375,
                          child: InkWell(
                            child: Row(children: [
                              Text("Light"),
                              Switch(
                                value: light, 
                                onChanged: (bool value){
                                  setState(() {
                                    light= value;
                                  });
                                })
                            ],),
                          ),
                        )


          ],),

            

                    


        ],
      ),
      ),
    
    );
    
    
  }
}