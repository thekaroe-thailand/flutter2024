import 'package:flutter/material.dart';

class CustomCartComponent extends StatelessWidget {
  const CustomCartComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Card Example')),
      body: const Center(
        child: CustomCard(
          title: 'Flutter Custom Card',
          description: 'This is a custom card widget created in Flutter.',
          imageUrl: 'https://example.com/image.jpg',
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const CustomCard(
      {super.key,
      required this.title,
      required this.description,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.network(
              imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.end,
            children: [
              TextButton(
                child: const Text('LEARN MORE'),
                onPressed: () {
                  // Add action here
                },
              ),
              TextButton(
                child: const Text('SHARE'),
                onPressed: () {
                  // Add action here
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
