import 'package:flutter/material.dart';

class StaffDetailComponent extends StatefulWidget {
  @override
  _StaffDetailComponentState createState() => _StaffDetailComponentState();
}

class _StaffDetailComponentState extends State<StaffDetailComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network('https://drive.google.com/uc?export=view&id=' +
            '1ntGLjC5PuoVC59VXP0iOnsGI7M4IIvCp'),
        Text('森啓太' + ' (' + 'モリケイタ' + ')'),
      ],
    );
  }
}
