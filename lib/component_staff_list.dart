import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:terakoya_staff_intro_site/component_staff_item.dart';
import 'package:terakoya_staff_intro_site/page_staff_detail.dart';

class StaffListComponent extends StatefulWidget {
  AsyncSnapshot<QuerySnapshot<Object?>> _snapshot;
  StaffListComponent(this._snapshot);

  @override
  State<StaffListComponent> createState() => _StaffListComponentState();
}

class _StaffListComponentState extends State<StaffListComponent> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 0.7,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              final staff = widget._snapshot.data!.docs[index];
              return GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return StaffDetailPage(staff);
                  }));
                },
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  alignment: Alignment.topCenter,
                  color: Colors.blueGrey[50],
                  child: SingleChildScrollView(
                    child: StaffListItem(staff),
                  ),
                ),
              );
            },
            childCount: widget._snapshot.data!.docs.length,
          ),
        )
      ],
    );
  }
}
