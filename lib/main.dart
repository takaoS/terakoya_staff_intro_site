import 'package:flutter/material.dart';
import 'package:terakoya_staff_intro_site/page_staff_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Staff Introduction Site | Cafe de Terakoya',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StaffListPage(),
    );
  }
}
