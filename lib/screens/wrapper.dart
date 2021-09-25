import 'package:DreamshareV4/screens/authenticate/authenticate.dart';
import 'package:DreamshareV4/screens/home/home.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    // return either home or auth widget
    return Authenticate();
  }
}