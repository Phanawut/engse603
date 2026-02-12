import 'package:flutter/material.dart';

class ActionsPage extends StatelessWidget {
  const ActionsPage({super.key});

  // เก็บโค้ดไว้ในตัวแปร String เพื่อนำไปแสดงผล
  final String codeExample = """
FloatingActionButton(
  onPressed: () {},
  child: const Icon(Icons.add),
),
ElevatedButton(
  onPressed: () {},
  child: const Text('Elevated Button'),
)
""";

  @override
  Widget build(BuildContext context) {
    // ใช้ DefaultTabController เพื่อสร้าง Tab ระหว่าง UI และ Code
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Actions Component'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.preview), text: "Preview"),
              Tab(icon: Icon(Icons.code), text: "Code"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // ส่วนที่ 1: หน้าจอแสดงผลจริง (Preview)
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Elevated Button'),
                  ),
                ],
              ),
            ),
            
            // ส่วนที่ 2: หน้าจอแสดงโค้ด (Code View)
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: SelectableText( // ใช้ SelectableText ให้ก๊อปปี้ได้
                codeExample,
                style: const TextStyle(fontFamily: 'Courier', fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
