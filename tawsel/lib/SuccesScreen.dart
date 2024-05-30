import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tawsel/NewHome.dart';
import 'package:tawsel/customButton.dart';
import 'main.dart';




class successScreen extends StatefulWidget {
  const successScreen({super.key});

  @override
  State<successScreen> createState() => _successScreenState();
}

class _successScreenState extends State<successScreen> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    
    return Scaffold(

      body: SingleChildScrollView(child: Container(
        height: currenheight,
        width: currentWidth,
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Column(
        
        children:  [
          
          Padding(
            padding: const EdgeInsets.fromLTRB(70, 192, 0, 0),
            child: Image.asset('assets/images/bags.png', height: 213,width: 208,),
          ),
          
          Padding(
            padding: EdgeInsets.fromLTRB(115, 46 , 0, 0),
            child: Text("Success!",style: GoogleFonts.tajawal(fontSize: 34,fontWeight: FontWeight.w700),),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB( 90 , 9, 0, 0),
            child: Container(
              alignment: Alignment.center,
              height: 42,
              width: 195,
              
              child: Text("Your order will be delivered soon. Thank you for choosing our app!", 
              style:GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 14, fontWeight:FontWeight.w400 ))),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(25,201,0,0),
            child: CustomButton(title: "Home",onPressed: () => Get.to(NewHome()),),
          ),
          
        ],
      ),

      )
 ,)     
      
      



    );
    
    

    




  }
  
  


}