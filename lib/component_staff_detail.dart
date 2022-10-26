import 'package:flutter/material.dart';
import 'package:terakoya_staff_intro_site/model/staff_model.dart';

class StaffDetailComponent extends StatefulWidget {
  var _staff;
  StaffDetailComponent(this._staff);

  @override
  State<StaffDetailComponent> createState() => _StaffDetailComponentState();
}

class _StaffDetailComponentState extends State<StaffDetailComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(widget._staff[Staff.imgUrl.asString()]),
        Text(
            '${widget._staff[Staff.fullName.asString()]} (${widget._staff[Staff.fullName_katakana.asString()]})'),
        Text(
            '${Staff.prefectures.staffColName}: ${widget._staff[Staff.prefectures.asString()]}'),
        Text(
            '${Staff.Terakoya.staffColName}: ${widget._staff[Staff.Terakoya.asString()]}'),
        Text(
            '${Staff.SkillTeam.staffColName}: ${widget._staff[Staff.SkillTeam.asString()]}'),
      ],
    );
  }
}
