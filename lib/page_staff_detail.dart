import 'package:flutter/material.dart';
import 'package:terakoya_staff_intro_site/component_staff_detail.dart';

class StaffDetailPage extends StatefulWidget {
  @override
  _StaffDetailPageState createState() => _StaffDetailPageState();
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
        title: Text('森啓太' + ' のプロフィール'),
      ),
      body: Center(
        child: Container(
          width: width * 0.8,
          height: height * 0.8,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StaffDetailComponent(),
                TextButton(
                  child: Text('Back'),
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
