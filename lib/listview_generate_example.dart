import 'package:flutter/material.dart';

class ListviewGenerateExample extends StatelessWidget {
  const ListviewGenerateExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewGeneratePage(),
    );
  }
}

class ListViewGeneratePage extends StatelessWidget {
  const ListViewGeneratePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Generate Example'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(10, (index) {
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network('https://via.placeholder.com/150'),
                          const SizedBox(height: 10),
                          Text(
                            'Card Title $index',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text('This is a card some content'),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Footer Button'),
            ),
          ),
        ],
      ),
      floatingActionButton: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            bottom: 80,
            right: 10,
            child: FloatingActionButton(
              onPressed: () {},
              tooltip: 'Menu 1',
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              child: const Icon(Icons.add),
            ),
          ),
          Positioned(
            bottom: 145,
            right: 10,
            child: FloatingActionButton(
              onPressed: () {},
              tooltip: 'Menu 2',
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              child: const Icon(Icons.remove),
            ),
          ),
        ],
      ),
    );
  }
}
