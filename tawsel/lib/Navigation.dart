import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tawsel/Components.dart';
import 'package:tawsel/Home.dart';
import 'package:tawsel/MyCart.dart';
import 'package:tawsel/NewHome.dart';
import 'package:tawsel/Proccess.dart';
import 'package:tawsel/favorites.dart';

import 'Controller.dart';



class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _Bottom();
}

class _Bottom extends State<Bottom> {
  final controller = Get.put(NavigationBarCont());
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    return GetBuilder<NavigationBarCont>(
      builder: (context){
        return Scaffold(
          body: IndexedStack(
            index: controller.tabIndex,
            children: [
              NewHome(),
              Text("shop"),
              //myCart2(),
              MyCart(),
             
              Favorites(),
              Proccess(),
            ],
          ),

          bottomNavigationBar: 
    Container(
            child: GNav(
              onTabChange: controller.changeTabIndex,
              //onTabChange:,
              //onTabChange: controller.tabIndex,
              
              tabs: [

                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  //onPressed: controller.tabIndex,
                   ),

                  GButton(
                  icon: Icons.favorite,
                  text: 'Favorites'),

                  GButton(
                  icon: Icons.shopping_cart,
                  text: 'Cart'),

                  GButton(
                  icon: Icons.chat,
                  text: 'chat'),

                  GButton(
                  icon: Icons.person,
                  text: 'Profile'),


              ]),
          ),


        );
      }



    );
  }
}