import 'package:flutter/material.dart';
import 'package:jokofedtest/components/constants.dart';
import 'package:jokofedtest/components/utilityButton.dart';
import 'package:jokofedtest/home/home.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  // Text Field state

  String email = 'joko.mzee@gmail.com';
  String password = '12345678';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        elevation: 0.0,
        title: Text('log In'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                decoration: kFieldInputDecoration.copyWith(hintText: 'email'),
                validator: (val) =>
                    val.isEmpty ? 'Email filed cant be empty' : null,
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                decoration:
                    kFieldInputDecoration.copyWith(hintText: 'password'),
                validator: (val) =>
                    val.length < 8 ? 'Enter at least 8+ chars long' : null,
                obscureText: true,
                onChanged: (val) {
                  setState(() => password = val);
                },
              ),
              UtilityButtons(
                title: 'LogIn',
                colour: Colors.green,
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  });
                  // if (_formKey.currentState.validate()) {
                  //   return Home();
                  // } else {
                  //   return null;
                  // }
                },
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
