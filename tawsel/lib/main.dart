

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:tawsel/AddAddress.dart';
import 'package:tawsel/Address.dart';
import 'package:tawsel/CanceledOrder.dart';
import 'package:tawsel/ConfirmOrder.dart';
import 'package:tawsel/DelivOrRest.dart';
import 'package:tawsel/Forgot.dart';
import 'package:tawsel/Home.dart';
import 'package:tawsel/Login.dart';
import 'package:tawsel/LoginDriver.dart';
import 'package:tawsel/LoginOrSIgnUp.dart';
import 'package:tawsel/NewHome.dart';
import 'package:tawsel/OTPpage.dart';
import 'package:tawsel/OrderCard.dart';
import 'package:tawsel/OrderDetails.dart';
import 'package:tawsel/OrderDetailsDriver.dart';
import 'package:tawsel/OrderDriver.dart';
import 'package:tawsel/PaymentCards.dart';
import 'package:tawsel/Profile.dart';
import 'package:tawsel/SignUp.dart';
import 'package:tawsel/SuccesScreen.dart';
import 'package:tawsel/Tabbar.dart';

import 'package:tawsel/favorites.dart';
import 'package:tawsel/navigation.dart';
import 'package:tawsel/proccess.dart';
import 'package:tawsel/theme/theme.dart';
import 'package:tawsel/theme/theme_provider.dart';

import 'Components.dart';
import 'MyCart.dart';
import 'MyOrders.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: MyApp(),
    ));
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      theme: Provider.of<ThemeProvider>(context).themeData,
      darkTheme: darkMode,
      home: 
      //Role()
      //NewHome()
      //OrderDetailsDriver()
      //Driver()
      //LoginDriver()
      //OrderCard()
      //CanceledOrder()
      //OrderDetails()
      //MyOrders()
      //profile()
      //successScreen()
      //ConfirmOrder()
      //PaymentCards()
      //AddAddress()
      //Address()
      //DelivOrRest()
      //Bottom()
      ///MyCart()
      LoginPage()
      //LoginOrSignUpPage()
      //ForgotPage()
      //OTPpage()
      
      //LoginPage()
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
