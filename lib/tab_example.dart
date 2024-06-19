import 'package:flutter/material.dart';

class TabExample extends StatelessWidget {
  const TabExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabPage(),
    );
  }
}

class TabPage extends StatelessWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Example'),
          backgroundColor: Colors.red,
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.home, color: Colors.white),
                text: 'Home',
              ),
              Tab(
                  icon: Icon(Icons.start, color: Colors.white),
                  text: 'Payment'),
              Tab(
                  icon: Icon(Icons.settings, color: Colors.white),
                  text: 'Settings'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomeTab(),
            PaymentTab(),
            SettingsTab(),
          ],
        ),
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Home');
  }
}

class PaymentTab extends StatelessWidget {
  const PaymentTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Payment');
  }
}

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Settings');
  }
}
