import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:terakoya_staff_intro_site/model/staff_model.dart';

class StaffListItem extends StatelessWidget {
  var _staff;
  String _sortValue;
  StaffListItem(this._staff, this._sortValue);

  @override
  Widget build(BuildContext context) {
    String info = '';

    String sortValue = _sortValue;
    if (_sortValue == Staff.TerakoyaNum.asString()) {
      info = _staff[Staff.Terakoya.asString()];
    } else if (_sortValue == Staff.joinDate.asString()) {
      info = DateFormat('yyyy/MM/dd')
          .format(_staff[Staff.joinDate.asString()].toDate());
    } else {
      info = _staff[_sortValue];
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Image.network(_staff[Staff.imgUrl.asString()]),
        ),
        Text(_staff[Staff.fullName.asString()]),
        Text(info),
      ],
    );
  }
}
