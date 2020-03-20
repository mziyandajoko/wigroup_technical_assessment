import 'package:flutter/material.dart';
import 'package:jokofedtest/home/home.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  final key = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        title: Text('Wikipedia'),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'Go back',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: WebView(
          key: key,
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: 'https://en.wikipedia.org/wiki/Main_Page'),
    );
  }
}
