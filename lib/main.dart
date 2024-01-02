import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
          child: RichText(
            text: TextSpan(
              text: 'Hello',
              style: TextStyle(fontSize: 35.0, color: Colors.blue, fontStyle: FontStyle.italic),
              children: [
                TextSpan(
                  text: 'World',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35.0, color: Colors.amber, fontStyle: FontStyle.normal),
                )
              ]
            ),
          )
      ),
    ),
  ));
}
