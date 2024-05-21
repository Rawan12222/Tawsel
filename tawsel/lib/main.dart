import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawsel/Home.dart';
import 'package:tawsel/Login.dart';
import 'package:tawsel/SignUp.dart';
import 'package:tawsel/Tabbar.dart';

import 'package:tawsel/favorites.dart';
import 'package:tawsel/navigation.dart';
import 'package:tawsel/proccess.dart';

import 'Components.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: 
      //Role()
      LoginPage()
      //Login()

     /* TTabBar(tabs: [
        ////HomePage(),
        //Components()
      ],)*/
      //Favorites()
      //HomePage()
      //Components()
      //Bottom()
      //NavigationBar(destinations: const [Icon(Icons.abc), Icon(Icons.access_alarm)],)
      //Proccess()
      //const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
