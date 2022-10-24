import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:terakoya_staff_intro_site/component_staff_item.dart';
import 'package:terakoya_staff_intro_site/page_staff_detail.dart';
import 'package:terakoya_staff_intro_site/model/staff_model.dart';

class StaffSearchComponent extends StatefulWidget {
  var _searchWords;

  StaffSearchComponent(searchWords) {
    _searchWords = searchWords;
  }

  @override
  _StaffSearchComponentState createState() => _StaffSearchComponentState();
}

class _StaffSearchComponentState extends State<StaffSearchComponent> {
  @override
  Widget build(BuildContext context) {
    Query _query = FirebaseFirestore.instance.collection('staff');

    for (var word in widget._searchWords) {
      _query =
          _query.where('${Staff.haystack.asString()}.$word', isEqualTo: true);
    }

    return StreamBuilder<QuerySnapshot>(
      stream: _query.snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text('不具合が発生しました…サポートロボにお問い合わせください (error code: 002)');
        } else if (snapshot.hasData || snapshot.data != null) {
          return CustomScrollView(
            slivers: [
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200.0,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 0.8,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    final _staff = snapshot.data!.docs[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return StaffDetailPage(_staff);
                        }));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.teal[100 * (index % 9)],
                        child: SingleChildScrollView(
                          child: StaffListItem(_staff),
                        ),
                      ),
                    );
                  },
                  childCount: snapshot.data!.docs.length,
                ),
              )
            ],
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
