import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tawsel/EntryField.dart';
import 'package:tawsel/NewHome.dart';
import 'package:tawsel/SignUp.dart';
import 'package:tawsel/customButton.dart';
import 'OrderDriver.dart';
import 'const.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  bool _isObscure3 = true;
  bool visible = false;
  final _auth = FirebaseAuth.instance;

  final _formkey= GlobalKey<FormState>();

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    
    return  Scaffold(


      body: SingleChildScrollView(
        
        
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Form(
                  key: _formkey,
                  child: Column(children: [
                    
        
              //_entryField('email', _controllerEmail),
              Padding(
            padding: const EdgeInsets.fromLTRB(136, 141, 0,0),
            child: Text("Login", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 34, fontWeight: FontWeight.w700)),),
          ),


              Padding(
                padding: const EdgeInsets.fromLTRB(23,77,0,0),
                child: EntryField(labeltext: "Email", myController: _controllerEmail,
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(23,31,0,0),
                child: EntryField(labeltext:'password',myController: _controllerPassword),
              ),

              InkWell(
            child:  Padding(
              padding: const EdgeInsets.fromLTRB(119, 16,0,0),
              child: Text("Forgot your password?", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(252, 15, 15, 1))),),
            )
            ),
            InkWell(
              //onTap: Get.to( () => SignUp()) ,
              onTap: () => Get.to(SignUp()),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(108,5,0,0),
                child: Text("don't have an account?", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color.fromRGBO(16, 16, 16, 1))),),
              ),
            ),

              /*Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(child: _errorMassage()),
              ),*/

              Padding(
                padding: const EdgeInsets.fromLTRB(39,45,0,0),
                child: CustomButton( title: "Login", onPressed: () {
                            setState(() {
                              visible = true;
                            });
                            signIn(
                                _controllerEmail.text, _controllerPassword.text);
                          },),
              ),
             // CustomButton(title: "Register", onPressed: _submitButton,),
              //_submitButton(),
              //_loginOrRegisterButton(),

              Padding(
              padding: const EdgeInsets.fromLTRB(107,63,0,0),
              child: Text("Big Kitchen Burger", style: GoogleFonts.inter(textStyle: const TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: Colors.black))),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(124,16,0,0),
              child: Text("At your Dinning Table", style: GoogleFonts.inter(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: kprimaryColor ))),
            ),
              
        
                  ],)),)
          ],),
        ),
      )
    );
  }
  void route() {
    User? user = FirebaseAuth.instance.currentUser;
    var kk = FirebaseFirestore.instance
            .collection('users')
            .doc(user!.uid)
            .get()
            .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        if (documentSnapshot.get('rool') == "Driver") {
           Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>  Driver(),
          ),
        );
        }else{
          Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>  NewHome(),
          ),
        );
        }
      } else {
        print('Document does not exist on the database');
      }
    });
  }

  void signIn(String email, String password) async {
    if (_formkey.currentState!.validate()) {
      try {
        UserCredential userCredential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        route();
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }
      }
    }
  }
}