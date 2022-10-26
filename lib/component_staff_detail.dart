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
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          width: 300,
          height: 300,
          child: Image.network(widget._staff[Staff.imgUrl.asString()]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Text(
              '${widget._staff[Staff.fullName.asString()]} (${widget._staff[Staff.fullName_katakana.asString()]})'),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.prefectures.staffColName}：${widget._staff[Staff.prefectures.asString()]}'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.Terakoya.staffColName}：${widget._staff[Staff.Terakoya.asString()]}'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.SkillTeam.staffColName}：${widget._staff[Staff.SkillTeam.asString()]}'),
            ),
          ],
        )
      ],
    );
  }
}
