import 'package:flutter/material.dart';

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ExpandedPage(),
    );
  }
}

class ExpandedPage extends StatelessWidget {
  const ExpandedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Example'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.red,
            height: 100,
            child: const Text('Fixed Height Container'),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: const Text('Expanded Container 1'),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: const Text('Expanced Container 2'),
            ),
          ),
          Container(
            color: Colors.yellow,
            height: 100,
            child: const Text('Fixed Height Container'),
          ),
        ],
      ),
    );
  }
}
