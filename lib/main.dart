import 'package:flutter/material.dart';
import 'home_page.dart';
import 'sections/actions_page.dart';
import 'pages/communication_page.dart';
import 'pages/containment_page.dart';
import 'pages/navigation_page.dart';
import 'pages/selection_page.dart';
import 'pages/input_page.dart';
// import ไฟล์อื่นๆ ตามที่คุณสร้างเพิ่ม

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Material Components',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      // กำหนด Route เริ่มต้น
      initialRoute: '/',
      // กำหนด Named Routes ไปยังหน้าต่างๆ
      routes: {
        '/': (context) => const HomePage(),
        '/actions': (context) => const ActionsPage(),
        '/communication': (_) => const CommunicationPage(),
        '/containment': (_) => const ContainmentPage(),
        '/navigation_topic': (_) => const NavigationPage(),
        '/selection': (_) => const SelectionPage(),
        '/text_inputs': (_) => const InputPage(),
      },
    );
  }
}
