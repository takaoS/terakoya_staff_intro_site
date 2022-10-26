import 'package:flutter/material.dart';
import 'package:terakoya_staff_intro_site/model/staff_model.dart';

class StaffListItem extends StatelessWidget {
  var _staff;
  StaffListItem(this._staff);

  @override
  Widget build(BuildContext context) {
    var _info = _staff[Staff.prefectures.asString()];

    if (_staff[Staff.Terakoya.asString()] != '') {
      _info += ' / ${_staff[Staff.Terakoya.asString()]}';
    }
    if (_staff[Staff.SkillTeam.asString()] != '') {
      _info += ' / ${_staff[Staff.SkillTeam.asString()]}';
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(_staff[Staff.imgUrl.asString()]),
        Text(_staff[Staff.fullName.asString()]),
        Text(_info),
      ],
    );
  }
}
