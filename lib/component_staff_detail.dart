import 'package:flutter/material.dart';
import 'package:terakoya_staff_intro_site/model/staff_model.dart';

class StaffDetailComponent extends StatefulWidget {
  var staff;
  StaffDetailComponent(staff) {
    this.staff = staff;
  }
  @override
  _StaffDetailComponentState createState() => _StaffDetailComponentState();
}

class _StaffDetailComponentState extends State<StaffDetailComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(widget.staff[Staff.imgUrl.castToString()]),
        Text(widget.staff[Staff.fullName.castToString()] +
            ' (' +
            widget.staff[Staff.fullName_katakana.castToString()] +
            ')'),
        Text(
            '${Staff.prefectures.staffColName}: ${widget.staff[Staff.prefectures.castToString()]}'),
        Text(
            '${Staff.Terakoya.staffColName}: ${widget.staff[Staff.Terakoya.castToString()]}'),
        Text(
            '${Staff.SkillTeam.staffColName}: ${widget.staff[Staff.SkillTeam.castToString()]}'),
      ],
    );
  }
}
