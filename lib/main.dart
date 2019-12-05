import 'package:flutter/material.dart';

void main(List<String> args) => runApp(App());

class App  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
          elevation: 0.0,
        ),
        body: Hello()
      )
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text(
        'hello',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 60,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }
}