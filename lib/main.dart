import 'package:flutter/material.dart';
//shayekh ebne mizan

const url =
    'https://th.bing.com/th/id/OIP.lELm1ifdvkgG9H0ZTL1tRQHaFj?w=203&h=180&c=7&r=0&o=5&pid=1.7';

const desc =
    '''Sajek Valley is one of the most popular tourist spots in Bangladesh situated among the hills of the Kasalong range of mountains in Sajek union, Baghaichhari Upazila in Rangamati District.''';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      // appBar: AppBar(
      //   title: Text('Flutter Layout Demo'),
      // ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
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
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sajek Valley',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Sajek Valley',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.star,
                    color: Colors.red,
                  ),
                  Text(
                    '95',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "CALL",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.near_me,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "ROUTE",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "SHARE",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                desc,
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    ),
  ));
}
