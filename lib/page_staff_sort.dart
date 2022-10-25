import 'package:flutter/material.dart';
import 'package:terakoya_staff_intro_site/component_staff_sort.dart';
import 'package:terakoya_staff_intro_site/model/staff_model.dart';
import 'package:terakoya_staff_intro_site/page_staff_search.dart';

class StaffListPage extends StatefulWidget {
  @override
  State<StaffListPage> createState() => _StaffListPageState();
}

class _StaffListPageState extends State<StaffListPage> {
  var _sort = Staff.prefectures.asString();
  bool _isDescending = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('学生スタッフ 一覧'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return StaffSearchPage();
              }));
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.sort_by_alpha),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          child: Text(Staff.prefectures.staffColName),
                          onPressed: () => setState(() {
                            _sort = Staff.prefectures.asString();
                          }),
                        ),
                        ElevatedButton(
                          child: Text(Staff.schoolYear.staffColName),
                          onPressed: () => setState(() {
                            _sort = Staff.schoolYear.asString();
                          }),
                        ),
                        ElevatedButton(
                          child: Text(Staff.joinDate.staffColName),
                          onPressed: () => setState(() {
                            _sort = Staff.joinDate.asString();
                          }),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          child: Text(Staff.Terakoya.staffColName),
                          onPressed: () => setState(() {
                            _sort = Staff.Terakoya.asString();
                          }),
                        ),
                        ElevatedButton(
                          child: Text(Staff.SkillTeam.staffColName),
                          onPressed: () => setState(() {
                            _sort = Staff.SkillTeam.asString();
                          }),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.compare_arrows),
                ElevatedButton(
                  child: const Text('昇順'),
                  onPressed: () => setState(() {
                    _isDescending = false;
                  }),
                ),
                ElevatedButton(
                  child: const Text('降順'),
                  onPressed: () => setState(() {
                    _isDescending = true;
                  }),
                ),
              ],
            ),
            Expanded(
              child: StaffListComponent(_sort, _isDescending),
            )
          ],
        ),
      ),
    );
  }
}
