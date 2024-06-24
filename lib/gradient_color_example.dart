import 'package:flutter/material.dart';

class GradientColorExample extends StatelessWidget {
  const GradientColorExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GradientColorPage(),
    );
  }
}

class GradientColorPage extends StatelessWidget {
  const GradientColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: SweepGradient(
            center: Alignment.center,
            colors: [
              Colors.blue,
              Colors.purple,
            ],
          ),
        ),
        child: const Center(
          child: Text('Gradient Bacground'),
        ),
      ),
    );
  }
}
