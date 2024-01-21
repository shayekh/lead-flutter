import 'package:basic_widgets/screens/list_view_example.dart';
import 'package:flutter/material.dart';

import 'screens/home_page.dart';
//shayekh ebne mizan

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewExample(),
    );
  }
}
