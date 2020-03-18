import 'package:flutter/material.dart';
import 'package:jokofedtest/components/constants.dart';
import 'package:jokofedtest/components/utilityButton.dart';
import 'package:jokofedtest/pages/result.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Home'),
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'Search Results Will appear on the Nextpage',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 20),
                  TextFormField(
                    decoration:
                        kFieldInputDecoration.copyWith(hintText: 'Search'),
                  )
                ],
              ),
            ),
            UtilityButtons(
              title: 'Search',
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
