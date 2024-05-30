import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tawsel/TextField.dart';
import 'package:tawsel/customButton.dart';


class PaymentCards extends StatefulWidget {
  const PaymentCards({super.key});

  @override
  State<PaymentCards> createState() => _PaymentCardsState();
}

class _PaymentCardsState extends State<PaymentCards> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.2,
        backgroundColor:  Colors.white,
        title: Text("Payment methods",style: GoogleFonts.tajawal(fontSize:18, fontWeight: FontWeight.w900,color: Colors.black ),),
      ),

      body: SingleChildScrollView(child: Padding(
        padding: const EdgeInsets.only(left:16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      
      
          Padding(
            padding: const EdgeInsets.fromLTRB(0,30,0,0),
            child: Text("Your payment cards", style: GoogleFonts.tajawal(fontSize: 16, fontWeight: FontWeight.w900),),
          ),
      
          _buildCreditCard(
            color: Colors.black, 
            cardNumber: "**** **** ***** 3947", 
            cardHolder: "Jennyfer Doe", 
            cardExpiration: "05/23"),
      
            CheckboxListTile(
              value: isChecked, 
              onChanged: (bool? value) {
                  setState(() {
                  isChecked = value!;
                  });
                },
              title: Text("Use as default payment method", style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w400),),
              controlAffinity: ListTileControlAffinity.leading),
      
            _buildCreditCard(
            color: Colors.grey, 
            cardNumber: "**** **** ***** 3947", 
            cardHolder: "Jennyfer Doe", 
            cardExpiration: "05/23"),
      
            CheckboxListTile(
              value: isChecked, 
              onChanged: (bool? value) {
                  setState(() {
                  isChecked = value!;
                  });
                },
              title: Text("Use as default payment method", style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w400),),
              controlAffinity: ListTileControlAffinity.leading),
      
      
            InkWell(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(319.92,30.73,0,0),
                child: Icon(Icons.add_circle,size: 37.44,),
              ),
              onTap: (){scaffoldKey.currentState?.showBottomSheet((context) => 
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35)
                ),
                height: 570,
                width: 390,
                child: Padding(
                  padding: const EdgeInsets.only(left:16,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(119,14,0,0),
                      child: Text("Add new card"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:18),
                      child: TTextField(labeltext: "Name on card"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:20),
                      child: TTextField(labeltext: "5546 8205 3693 3947"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:20),
                      child: TTextField(labeltext: "05/23"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:20),
                      child: TTextField(labeltext: "567"),
                    ),
                
                    Padding(
                      padding: const EdgeInsets.fromLTRB(69.14,28.26,0,0),
                      child: CheckboxListTile(
                        value: isChecked, 
                        title: Text("Set as default payment method"),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value){
                          setState(() {
                            isChecked= value!;
                          });
                        }),
                    ),
                
                      Padding(
                        padding: const EdgeInsets.fromLTRB(42,53.81,0,0),
                        child: Container(
                          height: 47.83,
                          width: 274.54,
                          child: CustomButton(title: "Add Card")),
                      )
                  ],),
                ),
              )
              
              );}
            )
      
      
      
        ],),
      ),),
    );
  }

   Card _buildCreditCard(
      {required Color color,
      required String cardNumber,
      required String cardHolder,
      required String cardExpiration}) {
    return Card(
      elevation: 4.0,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        
      ),
      child: Container(

        decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.34),
            spreadRadius: 0,
            blurRadius: 25,
            offset: Offset(0, 1),
          )]

        ),
        height: 216,
        width: 359,
        padding: const EdgeInsets.only(top: 34,left: 24, right: 24, bottom: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //_buildLogosBlock(),
            Image.asset("assets/images/chip.png",height: 24,width: 32,),
            Padding(
              padding: const EdgeInsets.only(left: 47),
               child: Text(
                '$cardNumber',
                style: GoogleFonts.tajawal(textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    ),)
              ),
            ),
            //Padding(
              //padding: const EdgeInsets.only(top: 0),
               Padding(
                 padding: const EdgeInsets.only(left: 3),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _buildDetailsBlock(
                      label: 'Card Holder Name',
                      value: cardHolder,
                    ),
                    _buildDetailsBlock(
                      label: 'Expiry Date', 
                      value: cardExpiration
                    ),
                    Image.asset('assets/images/mastercard.png', scale: 4,)
                  ],
                             ),
               ),
           // ),
          ],
        ),
      ),
    );
  }

  Column _buildDetailsBlock({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '$label',
          style: GoogleFonts.tajawal(textStyle: TextStyle(
              color: Colors.grey, fontSize: 10, fontWeight: FontWeight.w900),)
        ),
        Padding(
          padding: const EdgeInsets.only(top: 3),
          child: Text(
            '$value',
            style: GoogleFonts.tajawal(textStyle: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w900),)
          ),
        )
      ],
    );
  }

}