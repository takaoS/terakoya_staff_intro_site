import 'package:flutter/material.dart';
import 'package:terakoya_staff_intro_site/component_staff_list.dart';

class StaffListPage extends StatefulWidget {
  @override
  State<StaffListPage> createState() => _StaffListPageState();
}

class _StaffListPageState extends State<StaffListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学生スタッフ 一覧ページ'),
      ),
      body: StaffListComponent(),
    );
  }
}
