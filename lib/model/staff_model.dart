enum Staff {
  SkillTeam,
  Terakoya,
  prefectures,
  fullName,
  fullName_katakana,
  schoolYear,
  joinDate,
  imgUrl,
  haystack,
}

extension StaffExtention on Staff {
  static final _staffColNames = {
    Staff.SkillTeam: 'スキルチーム',
    Staff.Terakoya: '寺子屋',
    Staff.prefectures: '都道府県',
    Staff.fullName: '名前',
    Staff.fullName_katakana: 'フリガナ',
    Staff.schoolYear: '学年',
    Staff.joinDate: '加入日',
  };

  String get staffColName => _staffColNames[this]!;

  static final _sortValueNames = {
    Staff.SkillTeam: 'スキルチーム順',
    Staff.Terakoya: '寺子屋順',
    Staff.prefectures: '都道府県順',
    Staff.fullName_katakana: '名前順',
    Staff.schoolYear: '学年順',
    Staff.joinDate: '加入日順',
  };

  String get sortValueName => _sortValueNames[this]!;

  String asString() => this.toString().split('.').last;
}
