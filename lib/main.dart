import 'package:flutter/material.dart';
//shayekh ebne mizan -prom - shaku.. proxy

const url = 'https://th.bing.com/th/id/OIP.lELm1ifdvkgG9H0ZTL1tRQHaFj?w=203&h=180&c=7&r=0&o=5&pid=1.7';
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.network(url, width: double.infinity, height: 250, fit: BoxFit.cover,),
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
