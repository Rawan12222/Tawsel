import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tawsel/MyCart.dart';

import 'const.dart';


class Components extends StatefulWidget {
  const Components({super.key});

  @override
  State<Components> createState() => _ComponentsState();
}

class _ComponentsState extends State<Components> {
   var value = false;
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Components", 
        style: GoogleFonts.tajawal(textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.black)),),
      ),
      body: Container(

        child: SingleChildScrollView(
          child: Column(children: [



          Padding(
            padding: const EdgeInsets.only(left: 16, top: 21),
            child: Container(
              height: 40,
              width: 343,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white
              ),
              
              child: TextField(
                    readOnly: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Search",
                        prefixIcon: Icon (Icons.search,size: 36,),
                        filled: true,
                        fillColor:Color.fromRGBO(255, 255, 255, 1) ,
                        labelStyle:GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(155, 155, 155, 1))) , 
                        
                      ),
                    ),),

          ),

          _checkboxs(
            food: "Beef", 
            num: "727"),

          _checkboxs(
            food: "Cheese", 
            num: "80"),

          _checkboxs(
            food: "Fries-S", 
            num: "342"),

          _checkboxs(
            food: "Fries-R", 
            num: "486"),
          
          _checkboxs(
            food: "Fries-M", 
            num: "685"),

          _checkboxs(
            food: "Fries-L", 
            num: "808"),

          _checkboxs(
            food: "Garden Salad", 
            num: "56"),

          _checkboxs(
            food: "Side Salad", 
            num: "27"),

          _checkboxs(
            food: "Ketchup", 
            num: "11"),

          _checkboxs(
            food: "Coca-Cola-S", 
            num: "102"),

          _checkboxs(
            food: "Coca-Cola-M", 
            num: "201"),
          //Coca-Cola-S



           Padding(
             padding: const EdgeInsets.only(left: 21, right: 31),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                    height:60,
                    width: 151,
                    decoration: BoxDecoration(
                      color: kprimaryColor,
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: TextButton(
                    onPressed: (){}, 
                    child: Text("Discard", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 255, 255, 1))),)
                    )
                  ),
           
                  Container(
                    height:60,
                    width: 151,
                    decoration: BoxDecoration(
                      color: kprimaryColor,
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: TextButton(
                    onPressed: ()=>Get.to(MyCart()), 
                    child: Text("Apply", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 255, 255, 1))),)
                    )
                  ),
             ],),
           )




        ],),

        





        )      ),
    );
  }



  Container _checkboxs ({required String food, required String num , }){
    return Container(
     child: Padding(
       padding: const EdgeInsets.only(left: 16, ),
       child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Text(food),
            Text(num),
            Checkbox(
              value: value, 
              onChanged:( (value) => this.value= value!) )
     
       ],),
     ),

    );
  }


  


}