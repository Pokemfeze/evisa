import 'package:evisa/utils/color_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../reusable_widget/reausable_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: EdgeInsets.fromLTRB(28, MediaQuery.of(context).size.height *0.2,20,0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/cameroun.jpg"),
                SizedBox(height: 30),
                reusableTextField(" Username or E-mail ",Icons.person_outline,false, _emailTextController),
                SizedBox(height: 20,),
                reusableTextField(" Password ",Icons.lock_outline,true, _passwordTextController),
                SizedBox(height: 20,),
                signInSignUpButton(context, true, () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}


