import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tawsel/Components.dart';
import 'package:tawsel/Home.dart';
import 'package:tawsel/NewHome.dart';


import 'const.dart';


class TTabBar extends StatefulWidget {
  const TTabBar({super.key, required List tabs});

  @override
  State<TTabBar> createState() => _TTabBarState();
}

class _TTabBarState extends State<TTabBar> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    //TabController _tabController = 
    //TabController(length: 3, vsync: this);
    return DefaultTabController(length: 5, child:  Scaffold (
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        
        title: Align(alignment: Alignment.centerRight, child: Image.asset('assets/images/profile.png', scale: 3,),),
        leading: IconButton(
          icon: const Icon(Icons.filter_list_sharp ,color:Colors.black ),
          onPressed: (){},
        ),
        bottom: TabBar(
          
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
                        child: Text("All", style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.black)),)
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
                        child: Text("Burgers", style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.black)),)
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
                        child: Text("Juice", style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.black)),)
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
                        child: Text("Bread", style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.black)),)
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
                        child: Text("Pizza", style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.black)),)
                        )
                      ),
        ]),
      ),



      body: TabBarView(
        
        children: [

                      NewHome(),

                      Container(
                        height: 31,
                        width: 58,
                        decoration: BoxDecoration(
                          //color: kprimaryColor,
                          border: Border.all(color: kprimaryColor),
                          borderRadius: BorderRadius.circular(40)
                        ),
                        child: TextButton(
                        onPressed: (){}, 
                        child: Text("All", style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.black)),)
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
                        child: Text("Burgers", style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.black)),)
                        )
                      ),

                      Container(
                        height: 31,
                        width: 58,
                        decoration: BoxDecoration(
                          //color: kprimaryColor,
                          border: Border.all(color: kprimaryColor),
                          borderRadius: BorderRadius.circular(40)
                        ),
                        child: TextButton(
                        onPressed: (){}, 
                        child: Text("All", style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.black)),)
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
                        child: Text("Burgers", style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.black)),)
                        )
                      ),

                      

                      
        ]
       

        ),
      ),
    );
  }
}
