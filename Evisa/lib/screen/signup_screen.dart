import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../reusable_widget/reausable_widget.dart';
import '../utils/color_util.dart';
import 'home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _usernameTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent ,
        elevation: 0,
        title: const Text(
            "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              hexStringTocolor("FFFFFF"),
              hexStringTocolor("FFFFFF")
            ],begin: Alignment.topCenter,end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20,0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 30),
                reusableTextField(" Enter Username  ",Icons.person_outline,false, _usernameTextController),
                SizedBox(height: 20,),
                reusableTextField(" Enter Email ",Icons.person_outline,false, _emailTextController),
                SizedBox(height: 20,),
                reusableTextField(" Enter Password ",Icons.lock_outline,true, _passwordTextController),
                SizedBox(height: 20,),
                signInSignUpButton(context, false, () {
                  FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email : _emailTextController.text, 
                      password: _passwordTextController.text)
                  .then((value) {
                    print("Created New Account");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                  
                }),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
