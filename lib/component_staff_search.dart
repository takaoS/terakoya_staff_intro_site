import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:terakoya_staff_intro_site/page_staff_detail.dart';
import 'package:terakoya_staff_intro_site/model/staff_model.dart';

class StaffSearchComponent extends StatefulWidget {
  var searchWords;

  StaffSearchComponent(searchWords) {
    this.searchWords = searchWords;
    print(this.searchWords); // for debug
  }

  @override
  _StaffSearchComponentState createState() => _StaffSearchComponentState();
}

class _StaffSearchComponentState extends State<StaffSearchComponent> {
  @override
  Widget build(BuildContext context) {
    Query query = FirebaseFirestore.instance.collection('staff');
    widget.searchWords.forEach((word) {
      query = query.where(Staff.haystack.castToString() + '.' + word,
          isEqualTo: true);
    });
    return StreamBuilder<QuerySnapshot>(
      stream: query.snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('something went wrong');
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
                    final staff = snapshot.data!.docs[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return StaffDetailPage(staff);
                        }));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.teal[100 * (index % 9)],
                        child: SingleChildScrollView(
                          child: StaffListItem(staff),
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
        return Text("Loading ...");
      },
    );
  }
}

class StaffListItem extends StatelessWidget {
  var staff;
  StaffListItem(staff) {
    this.staff = staff;
  }
  @override
  Widget build(BuildContext context) {
    var info = staff[Staff.prefectures.castToString()];
    if (staff[Staff.Terakoya.castToString()] != '') {
      info += ' / ' + staff[Staff.Terakoya.castToString()];
    }
    if (staff[Staff.SkillTeam.castToString()] != '') {
      info += ' / ' + staff[Staff.SkillTeam.castToString()];
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(staff[Staff.imgUrl.castToString()]),
        Text(staff[Staff.fullName.castToString()]),
        Text(info),
      ],
    );
  }
}