import 'package:flutter/material.dart';
import 'package:terakoya_staff_intro_site/component_staff_sort.dart';
import 'package:terakoya_staff_intro_site/model/staff_model.dart';
import 'package:terakoya_staff_intro_site/page_staff_search.dart';

class StaffListPage extends StatefulWidget {
  @override
  State<StaffListPage> createState() => _StaffListPageState();
}

class _StaffListPageState extends State<StaffListPage> {
  final List<Staff> _sortValueList = [
    Staff.fullName_katakana,
    Staff.prefectures,
    Staff.Terakoya,
    Staff.SkillTeam,
    Staff.schoolYear,
    Staff.joinDate,
  ];
  String _sortValue = Staff.fullName_katakana.asString();
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
                DropdownButton(
                  value: _sortValue,
                  items: _sortValueList.map((Staff sortValue) {
                    return DropdownMenuItem(
                        value: sortValue.asString(),
                        child: Text(sortValue.asString()));
                  }).toList(),
                  onChanged: ((sortValue) {
                    setState(() {
                      _sortValue = sortValue!;
                    });
                  }),
                ),
                DropdownButton(
                    value: _isDescending,
                    items: const [
                      DropdownMenuItem(value: false, child: Text('昇順')),
                      DropdownMenuItem(value: true, child: Text(('降順'))),
                    ],
                    onChanged: ((value) {
                      setState(() {
                        _isDescending = value!;
                      });
                    })),
              ],
            ),
            Expanded(
              child: StaffListComponent(_sortValue, _isDescending),
            )
          ],
        ),
      ),
    );
  }
}
