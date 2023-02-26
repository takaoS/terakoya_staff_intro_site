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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.university.staffColName}：${widget._staff[Staff.university.asString()]}'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.faculty.staffColName}：${widget._staff[Staff.faculty.asString()]}'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.department.staffColName}：${widget._staff[Staff.department.asString()]}'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.schoolYear.staffColName}：${widget._staff[Staff.schoolYear.asString()]}'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.hometown.staffColName}：${widget._staff[Staff.hometown.asString()]}'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.birthDate.staffColName}：${widget._staff[Staff.birthDate.asString()]}'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.joinDate.staffColName}：${widget._staff[Staff.joinDate.asString()]}'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.talent.staffColName}：${widget._staff[Staff.talent.asString()]}'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.favoriteThing.staffColName}：${widget._staff[Staff.favoriteThing.asString()]}'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.fave.staffColName}：${widget._staff[Staff.fave.asString()]}'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.respectPerson.staffColName}：${widget._staff[Staff.respectPerson.asString()]}'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.kanji.staffColName}：${widget._staff[Staff.kanji.asString()]}'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.Yojijukugo.staffColName}：${widget._staff[Staff.Yojijukugo.asString()]}'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.preciousWord.staffColName}：${widget._staff[Staff.preciousWord.asString()]}'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.goodPersonality.staffColName}：${widget._staff[Staff.goodPersonality.asString()]}'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.badPersonality.staffColName}：${widget._staff[Staff.badPersonality.asString()]}'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.idealSociety.staffColName}：\n${widget._staff[Staff.idealSociety.asString()]}'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.dream.staffColName}：\n${widget._staff[Staff.dream.asString()]}'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.interst.staffColName}：\n${widget._staff[Staff.interst.asString()]}'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.experience.staffColName}：\n${widget._staff[Staff.experience.asString()]}'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.challenge.staffColName}：\n${widget._staff[Staff.challenge.asString()]}'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                  '${Staff.closingWords.staffColName}：\n${widget._staff[Staff.closingWords.asString()]}'),
            ),
          ],
        )
      ],
    );
  }
}
