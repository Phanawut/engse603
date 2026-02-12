import 'package:flutter/material.dart';

class ContainmentPage extends StatelessWidget {
  const ContainmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Containment')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Card title', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('This is an example of a Card used for containment of related content.'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(8)),
            child: const Text('Container with padding and background color'),
          ),
          const SizedBox(height: 12),
          const ListTile(
            leading: Icon(Icons.info),
            title: Text('ListTile inside a ListView'),
            subtitle: Text('Useful for grouped, scrollable content'),
          ),
        ],
      ),
    );
  }
}
