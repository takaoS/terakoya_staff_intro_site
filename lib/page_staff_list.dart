import 'package:flutter/material.dart';
import 'package:terakoya_staff_intro_site/component_staff_list.dart';
import 'package:terakoya_staff_intro_site/model/staff_model.dart';

class StaffListPage extends StatefulWidget {
  @override
  State<StaffListPage> createState() => _StaffListPageState();
}

class _StaffListPageState extends State<StaffListPage> {
  var sort;
  bool isDescending = false;

  @override
  void initState() {
    sort = Staff.prefectures.castToString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学生スタッフ 一覧ページ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('並び替え'),
                ElevatedButton(
                  child: Text(Staff.prefectures.staffColName),
                  onPressed: () => setState(() {
                    sort = Staff.prefectures.castToString();
                  }),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text('昇順'),
                  onPressed: () => setState(() {
                    isDescending = false;
                  }),
                ),
                ElevatedButton(
                  child: Text('降順'),
                  onPressed: () => setState(() {
                    isDescending = true;
                  }),
                ),
              ],
            ),
            Expanded(
              child: StaffListComponent(sort, isDescending),
            )
          ],
        ),
      ),
    );
  }
}
