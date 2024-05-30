import 'package:flutter/material.dart';
import 'package:tawsel/customButton.dart';

class ConfirmOrder extends StatefulWidget {
  const ConfirmOrder({super.key});

  @override
  State<ConfirmOrder> createState() => _ConfirmOrderState();
}

class _ConfirmOrderState extends State<ConfirmOrder> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
  
    return Scaffold(
      key: scaffoldKey,
      body: SingleChildScrollView(child: Column(children: [
        InkWell(child: Image.asset("assets/images/backgraund.png"),
        onTap: (){scaffoldKey.currentState?.showBottomSheet((context) =>
        Container(
          height: 569,
          width: 390,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40)
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(17,32,0,0),
            child: Column(children: [
              _containers(text: "Total Amount", num: "111"),
              Padding(
                padding: const EdgeInsets.only(top:14.0),
                child: _containers(text: "Total Products", num: "3"),
              ),
              Padding(
                padding: const EdgeInsets.only(top:14.0),
                child: _containers(text: "Delviry Time", num: "30 M"),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(41,127,0,0),
                child: Container(
                  height: 47.83,
                  width: 274.54,
                  child: CustomButton(title: "Confirme")),
              )

            ],),
          ),
        ) );},
        )
      ],) ,),
    );
  }
  Container _containers({required String text, required String num}){
    return Container(
      height: 64,
      width: 355,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(text),
        Text("$num")
      ],),


    );
  }
}