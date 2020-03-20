import 'package:flutter/material.dart';
import 'package:jokofedtest/components/utilityButton.dart';
import 'package:jokofedtest/pages/result.dart';

import 'webviewcontainer.dart';

class Home extends StatelessWidget {
  static final links = ['https://google.com'];

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

            //IMPLEMENTS WEBVIEW
            Text('click the button for webview'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: links.map((link) => _urlButton(context, link)).toList(),
            ),
            SizedBox(height: 10),
            UtilityButtons(
              title: 'Third page',
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

  Widget _urlButton(BuildContext context, String url) {
    return Container(
        padding: EdgeInsets.all(20.0),
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
          child: Text(url),
          onPressed: () => _handleURLButtonPress(context, url),
        ));
  }

  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}
