import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:terakoya_staff_intro_site/component_staff_list.dart';

class StaffSortComponent extends StatefulWidget {
  String _sortValue;
  bool _isDescending;
  StaffSortComponent(this._sortValue, this._isDescending);

  @override
  State<StaffSortComponent> createState() => _StaffSortComponentState();
}

class _StaffSortComponentState extends State<StaffSortComponent> {
  @override
  Widget build(BuildContext context) {
    Query query = FirebaseFirestore.instance
        .collection('staff')
        .orderBy(widget._sortValue, descending: widget._isDescending);

    return StreamBuilder<QuerySnapshot>(
      stream: query.snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text('不具合が発生しました…サポートロボにお問い合わせください (error code: 001)');
        } else if (snapshot.hasData || snapshot.data != null) {
          return StaffListComponent(snapshot);
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
