import 'package:flutter/material.dart';
//shayekh ebne mizan -prom - shaku.. proxy
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.camera, size: 50,),
              Icon(Icons.share, size: 50,),
            ],
          ),
          RichText(
            text: TextSpan(
            text: 'Hello',
            style: TextStyle(
                fontSize: 35.0,
                color: Colors.blue,
                fontStyle: FontStyle.italic),
            children: [
              TextSpan(
                text: 'World',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                    color: Colors.amber,
                    fontStyle: FontStyle.normal),
              )
            ]),
          ),
          Text('Hello Flutter', style: TextStyle(fontSize: 35.0),)
        ],
      ),
    ),
  ));
}
