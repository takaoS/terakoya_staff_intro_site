import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:terakoya_staff_intro_site/component_staff_detail.dart';
import 'package:terakoya_staff_intro_site/model/staff_model.dart';
import 'package:terakoya_staff_intro_site/page_signin.dart';

class StaffDetailPage extends StatefulWidget {
  var _staff;
  StaffDetailPage(this._staff);

  @override
  State<StaffDetailPage> createState() => _StaffDetailPageState();
}

class _StaffDetailPageState extends State<StaffDetailPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width;
    double height = size.height - AppBar().preferredSize.height;
    double aspectRatio = size.aspectRatio;
    if (aspectRatio < 0.5) {
      width = size.width;
    } else if (aspectRatio < 0.65) {
      width = size.width * 0.9;
    } else if (aspectRatio >= 0.65) {
      width = size.width * 0.8;
    } else {
      width = size.width;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('${widget._staff[Staff.fullName.asString()]} のプロフィール'),
        actions: [
          IconButton(
              icon: Icon(
                Icons.logout,
              ),
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                await Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: ((context) {
                  return SignInPage();
                })));
              }),
        ],
      ),
      body: Center(
        child: Container(
          width: width * 0.8,
          height: height * 0.8,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StaffDetailComponent(widget._staff),
                TextButton(
                  child: const Text('Back'),
                  onPressed: () => Navigator.of(context).pop(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
