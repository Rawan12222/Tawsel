import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'const.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Favorites", style: GoogleFonts.tajawal(textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black))),
        
        
      ),

      body: Container(

        child: SingleChildScrollView(child: Padding(
          padding: const EdgeInsets.only(left: 15.6),
          child: Column(children: [SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              _Buttons(type: "All"),
              _Buttons(type: "Burgers"),
              _Buttons(type: "Pizza"),
              _Buttons(type: "Juices")
        
            ],),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10 , bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              _rows(
                icon: Icons.filter_list, 
                text: "All"),
          
              _rows(
                icon: Icons.swap_vert, 
                text: "Price: lowest to high"),
          
              _rows(
                icon: Icons.rectangle, 
                text: "")
          
          
            ],),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            _cardFood(
            image: 'assets/images/burger3.png' , 
            number: "(10)", 
            icon: Icons.shopping_bag, 
            desc: "Beef Juicy Burger", 
            foodPrice: "55\$", 
            size: "L"),
            

          _cardFood(
            image: 'assets/images/burger4.png' , 
            number: "(10)", 
            icon: Icons.shopping_bag , 
            desc: "Beef Juicy Burger", 
            foodPrice: "65\$", 
            size: "S"),
          ],),

          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              _cardFood(
              image: 'assets/images/burger2.png' , 
              number: "(10)", 
              icon: Icons.shopping_bag, 
              desc: "Beef Juicy Burger", 
              foodPrice: "55\$", 
              size: "L"),
                
            ],),
          )


          ],),
        ),)


      ),

    );
  }


  Container _Buttons({required String type}){
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(right: 12.48),
        child: Container(
          height: 31.18,
        width: 104,
      
        decoration: BoxDecoration(
                      color: kTextColor,
                      borderRadius: BorderRadius.circular(29)
                    ),
                    child: TextButton(
                    onPressed: (){}, 
                    child: Text(type, style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.white)),)
                    ) ,
        ),
      ),
    );
  }


  Row _rows({required IconData icon, required String text}){
    return Row(
      children: [
        Icon(icon),
        Text(text)
      ],
      
    );
  }

  Container _cardFood({required String image, required String number,required IconData icon, required String desc, required String foodPrice, required String size }){
    return Container(
      height: 281,
      width: 110,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Image.asset( image, scale: 2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Image.asset('assets/images/St.png',scale: 2),
          Image.asset('assets/images/St.png',scale: 2),
          Image.asset('assets/images/St.png',scale: 2),
          Image.asset('assets/images/emptyStar.png',scale: 2),
          Image.asset('assets/images/emptyStar.png',scale: 2),
          Text(number , style:GoogleFonts.tajawal(textStyle: const TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.grey))),
          Icon(icon, color: Colors.red,)
        ],),
        Text("Burgers",  style:GoogleFonts.tajawal(textStyle: const TextStyle(fontSize: 11,fontWeight: FontWeight.w400,color: Colors.grey))),
        Text(desc),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(foodPrice),
          Row(children: [
            Text("Size: ", style:GoogleFonts.tajawal(textStyle: const TextStyle(fontSize: 11,fontWeight: FontWeight.w400,color: Colors.grey))),
            Text(size)
          ],)
        ],)
      ],),
    );
  }






}