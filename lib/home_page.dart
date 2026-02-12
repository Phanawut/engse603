import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // รายการเมนู
  final List<Map<String, String>> topics = const [
    {'title': 'Actions', 'route': '/actions'},
    {'title': 'Communication', 'route': '/communication'}, // ต้องสร้างหน้านี้เพิ่ม
    {'title': 'Containment', 'route': '/containment'},     // ต้องสร้างหน้านี้เพิ่ม
    {'title': 'Navigation', 'route': '/navigation_topic'}, // ตั้งชื่อไม่ให้ซ้ำกับ widget หลัก
    {'title': 'Selection', 'route': '/selection'},         // ต้องสร้างหน้านี้เพิ่ม
    {'title': 'Text Inputs', 'route': '/text_inputs'},     // ต้องสร้างหน้านี้เพิ่ม
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Material Components Assignment')),
      body: ListView.builder(
        itemCount: topics.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(topics[index]['title']!),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // การใช้ Navigator.pushNamed ตามโจทย์
                Navigator.pushNamed(context, topics[index]['route']!);
              },
            ),
          );
        },
      ),
    );
  }
}
