import 'package:flutter/material.dart';
import 'package:terakoya_staff_intro_site/model/staff_model.dart';

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
