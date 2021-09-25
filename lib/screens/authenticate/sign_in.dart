import 'package:DreamshareV4/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown.shade100,
        appBar: AppBar(
          backgroundColor: Colors.brown.shade300,
          elevation: 0,
          title: Text('Dreamshare'),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            child: ElevatedButton(
                child: Text('Sign in anon'),
                onPressed: () async{
                   dynamic result =  await _auth.SignInAnon();
                   if (result == null){
                     print('error signin in');
                   }else{
                     print('signed in');
                     print(result);
                   }
                },

              ),
        ),
    );

  }
}