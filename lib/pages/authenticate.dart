import 'package:flutter/material.dart';
import 'package:jokofedtest/pages/register.dart';

import 'logIn.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;
  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return LoginScreen();
    } else {
      return ThirdScreen();
    }
  }
}
