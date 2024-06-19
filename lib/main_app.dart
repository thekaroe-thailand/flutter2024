import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MyApp'),
          actions: <Widget>[
            PopupMenuButton<String>(
              icon: const Icon(
                Icons.more_vert,
              ),
              onSelected: (String result) {
                //print('selected $result');
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                const PopupMenuItem(
                  value: 'Option 1',
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.add_a_photo),
                      SizedBox(width: 10),
                      Text('Option 1')
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: 'Option 2',
                  child: Text('Option 2'),
                ),
                const PopupMenuItem(
                  value: 'Option 3',
                  child: Text('Option 3'),
                ),
              ],
            ),
          ],
        ),
        body: const Center(
          child: Text(
            'Flutter App',
            style: TextStyle(
              fontSize: 30,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
