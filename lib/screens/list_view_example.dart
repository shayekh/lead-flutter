import 'package:flutter/material.dart';

final List<String> items = List.generate(100, (index) => 'Item ${index + 1}');

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('List View')),
        body: ListView.builder(
            // scrollDirection: Axis.horizontal,
            itemCount: items.length,
            padding: EdgeInsets.all(16.0),
            itemBuilder: (context, index) => ListTile(
                  title: Text(items[index]),
                )));
  }
}
