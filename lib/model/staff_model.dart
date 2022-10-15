enum Staff {
  SkillTeam,
  Terakoya,
  prefectures,
  fullName,
  fullName_katakana,
  imgUrl,
}

extension StaffExtention on Staff {
  // enum型 → String型 に変換
  // toString() だけだと Order.Terakoya のようになるので、
  // .split('.').last で Terakoya だけ取り出す
  String castToString() => this.toString().split('.').last;
}
