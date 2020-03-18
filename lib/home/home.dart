import 'package:flutter/material.dart';
import 'package:jokofedtest/components/utilityButton.dart';
import 'package:jokofedtest/pages/register.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Home'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            UtilityButtons(
              title: 'Visit Third page',
              colour: Colors.blueAccent,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThirdScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
