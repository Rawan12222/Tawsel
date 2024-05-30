import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tawsel/EntryField.dart';
import 'package:tawsel/EntryField.dart';
import 'package:tawsel/Home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tawsel/Login.dart';
import 'package:tawsel/NewHome.dart';
import 'package:tawsel/TextField.dart';
import 'package:tawsel/customButton.dart';
import 'Auth.dart';
import 'OrderDriver.dart';



class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();

}

class _SignUpState extends State<SignUp> {
  _SignUpState();

  bool visible = false;
  bool showProgress = false;

  String? errorMessage = '';
  bool isLogin = true;

  final _formkey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  var options =[
    'Driver',
    'Customer'
  
  ];

  var _currentItemSelected = "Customer";
  var rool = "Customer";

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    
    return  Scaffold(

      body:  SingleChildScrollView(
        child: Container(

          child: Form(
            key: _formkey ,

          child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Padding(
              padding: const EdgeInsets.fromLTRB(115, 72, 0,0),
              child: Text("Sign up", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 50, fontWeight: FontWeight.w700
              )),),
            ),

          

          Padding(
            padding: EdgeInsets.fromLTRB(24,18,0,0),
            child: EntryField(
              labeltext: "email", 
              myController: _controllerEmail),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(24,18,0,0),
            child: EntryField(
              labeltext: "Password", 
              myController: _controllerPassword),
          ),

          const Padding(
            padding: EdgeInsets.fromLTRB(24,18,0,0),
            child: TTextField(
              labeltext: "Username", 
            ),
          ),

          const Padding(
            padding: EdgeInsets.fromLTRB(24,18,0,0),
            child: TTextField(
              labeltext: "Phone Number", 
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: DropdownButton<String>(
                                  dropdownColor: Colors.orange[300],
                                  isDense: true,
                                  isExpanded: false,
                                  iconEnabledColor: Colors.black,
                                  focusColor: Colors.black,
                                  items: options.map((String dropDownStringItem) {
                                    return DropdownMenuItem<String>(
                                      value: dropDownStringItem,
                                      child: Text(
                                        dropDownStringItem,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (newValueSelected) {
                                    setState(() {
                                      _currentItemSelected = newValueSelected!;
                                      rool = newValueSelected;
                                    });
                                  },
                                  value: _currentItemSelected,
                                ),

                                
            ),
          ),
          


          Padding(
            padding: const EdgeInsets.fromLTRB(39,97,0,0),
            child: CustomButton(title: "SignUp", onPressed:(){
                                  setState(() {
                                    showProgress = true;
                                  });
                                  signUp(_controllerEmail.text,
                                      _controllerPassword.text, rool);
                                },),
          )
          




        ],
          
      ),),),
      ),

    );
  }
    void signUp(String email, String password, String rool) async {
    CircularProgressIndicator();
    if (_formkey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailsToFirestore(email, rool)})
          .catchError((e) {});
    }
  }

  postDetailsToFirestore(String email, String rool) async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    var user = _auth.currentUser;
    CollectionReference ref = FirebaseFirestore.instance.collection('users');
    ref.doc(user!.uid).set({'email': _controllerEmail.text, 'rool': rool});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }


}