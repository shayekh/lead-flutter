import 'package:flutter/material.dart';

final List<String> items = List.generate(100, (index) => 'Item ${index + 1}');

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View')),
      body: ListView(
        children: items
            .map((item) => ListTile(
                  title: Text(item),
                ))
            .toList(),
      ),
    );
  }
}
