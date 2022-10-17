enum Staff {
  SkillTeam,
  Terakoya,
  prefectures,
  fullName,
  fullName_katakana,
  schoolYear,
  joinDate,
  imgUrl,
}

extension StaffExtention on Staff {
  static final staffColNames = {
    Staff.SkillTeam: 'スキルチーム',
    Staff.Terakoya: '寺子屋',
    Staff.prefectures: '都道府県',
    Staff.fullName: '名前',
    Staff.fullName_katakana: 'フリガナ',
    Staff.schoolYear: '学年',
    Staff.joinDate: '加入日',
  };

  String get staffColName => staffColNames[this]!;

  // enum型 → String型 に変換
  // toString() だけだと Order.Terakoya のようになるので、
  // .split('.').last で Terakoya だけ取り出す
  String castToString() => this.toString().split('.').last;
}
