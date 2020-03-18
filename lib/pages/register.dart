import 'package:flutter/material.dart';
import 'package:jokofedtest/components/constants.dart';
import 'package:jokofedtest/components/utilityButton.dart';
import 'package:jokofedtest/home/home.dart';

class ThirdScreen extends StatefulWidget {
  final Function toggleView;

  const ThirdScreen({Key key, this.toggleView}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  final _formKey = GlobalKey<FormState>();

  // Text Field state

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          elevation: 0.0,
          title: Text('Thrid Screen'),
          actions: <Widget>[],
        ),
        body: Container(
          child: Center(
            child: UtilityButtons(
              title: 'Go Back',
              colour: Colors.blueAccent,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
          ),
        ));
  }
}
