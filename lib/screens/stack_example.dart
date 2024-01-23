import 'package:basic_widgets/screens/home_page.dart';
import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack App'),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(child: Image.network(url, fit: BoxFit.cover,)),
          Positioned(
            right: 0,
            left: 0,
            bottom: -50,
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
