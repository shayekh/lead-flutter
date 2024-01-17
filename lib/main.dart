import 'package:flutter/material.dart';
//shayekh ebne mizan -prom - shaku.. proxy

const url =
    'https://th.bing.com/th/id/OIP.lELm1ifdvkgG9H0ZTL1tRQHaFj?w=203&h=180&c=7&r=0&o=5&pid=1.7';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter Layout Demo'),
      ),
      body: Column(
        children: [
          Image.network(
            url,
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Rangamati Tourist Spot',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Rangamati, Bangladesh',
                      style: TextStyle(fontSize: 20, color: Colors.black26),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '41',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.call,
                      size: 30,
                      color: Colors.deepPurpleAccent,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'CALL',
                      style: TextStyle(
                        color: Colors.deepPurpleAccent,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.navigation,
                      size: 30,
                      color: Colors.deepPurpleAccent,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'ROUTE',
                      style: TextStyle(color: Colors.deepPurpleAccent),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      size: 30,
                      color: Colors.deepPurpleAccent,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'SHARE',
                      style: TextStyle(color: Colors.deepPurpleAccent),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
          )
        ],
      ),
    ),
  ));
}
