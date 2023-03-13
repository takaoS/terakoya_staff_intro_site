import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:terakoya_staff_intro_site/component_staff_list.dart';
import 'package:terakoya_staff_intro_site/model/staff_model.dart';

class StaffSearchComponent extends StatefulWidget {
  List<String> _searchWords;
  StaffSearchComponent(this._searchWords);

  @override
  State<StaffSearchComponent> createState() => _StaffSearchComponentState();
}

class _StaffSearchComponentState extends State<StaffSearchComponent> {
  String sortValue = Staff.prefectures.asString();

  @override
  Widget build(BuildContext context) {
    Query query = FirebaseFirestore.instance.collection('staff');

    for (String word in widget._searchWords) {
      query =
          query.where('${Staff.haystack.asString()}.$word', isEqualTo: true);
    }

    return StreamBuilder<QuerySnapshot>(
      stream: query.snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text('不具合が発生しました…サポートロボにお問い合わせください (error code: 002)');
        } else if (snapshot.hasData || snapshot.data != null) {
          return StaffListComponent(snapshot, sortValue);
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
