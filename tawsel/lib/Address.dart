import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
   bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
  
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("Addresses", style: GoogleFonts.tajawal(fontSize: 18,fontWeight: FontWeight.w900, color: Colors.black),)),
      ),

       body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top:36.0),
              child: _buildAddressCard(
                      name: "Jane Doe",
                      street: "3 Newbridge Court",
                      city: "Chino Hills, CA 91709, United States"
                 ),
            ),
        
         Padding(
           padding: const EdgeInsets.only(top:24),
           child: _buildAddressCard(
            name: "Jane Doe", 
            street: "3 Newbridge Court", 
            city: "Chino Hills, CA 91709, United States"),
         ),

          Padding(
            padding: const EdgeInsets.only(top:24),
            child: _buildAddressCard(
              name: "Jane Doe", 
              street: "51 Riverside", 
              city: "Chino Hills, CA 91709, United States"),
          ),


          Padding(
            padding: const EdgeInsets.fromLTRB(308.8,156,0,0),
            child: Icon(Icons.add_circle,size: 37.44,),
          )




          ],),
        ),

        
       ),


    );
  }

  Card _buildAddressCard({required String name,required String street, required String city }) {
    return Card(

      elevation: 4.0,
      //color: Color.fromRGBO(255, 255, 255, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            color: Color.fromRGBO(255, 255, 255, 1),
            spreadRadius: 0,
            blurRadius: 25,
            offset: Offset(0, 1),
          )]
        ),

        height: 140,
        width: 343,

        child: Padding(
          padding: const EdgeInsets.only(left: 28, top: 18, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500 ))),
                  _EditDetali(edit: "Edit")
                  //Text("Change", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(219, 48, 34,1))),)
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Text(street, style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400 )),),
              ),
              Text(city, style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400 ))),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,8,0,0),
                child: CheckboxListTile(
                  value: isChecked, 
                  onChanged: (bool? value) {
                      setState(() {
                      isChecked = value!;
                     });
                  },
                  title: Text("Use as the shipping address", style: GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w400),),
                  controlAffinity: ListTileControlAffinity.leading
                  ),
              )
              
            ],
          ),
        ),
      ),

    );
  }
  Text _EditDetali({required String edit}){
    return Text(edit, style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(219, 48, 34,1))),);
  }
}