import 'package:flutter/material.dart';
import 'package:terakoya_staff_intro_site/model/staff_model.dart';

class StaffListItem extends StatelessWidget {
  var staff;

  StaffListItem(staff) {
    this.staff = staff;
  }

  @override
  Widget build(BuildContext context) {
    var info = staff[Staff.prefectures.asString()];

    if (staff[Staff.Terakoya.asString()] != '') {
      info += ' / ' + staff[Staff.Terakoya.asString()];
    }
    if (staff[Staff.SkillTeam.asString()] != '') {
      info += ' / ' + staff[Staff.SkillTeam.asString()];
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(staff[Staff.imgUrl.asString()]),
        Text(staff[Staff.fullName.asString()]),
        Text(info),
      ],
    );
  }
}
