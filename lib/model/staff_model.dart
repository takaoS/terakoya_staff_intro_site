enum Staff {
  SkillTeam,
  Terakoya,
  prefectures,
  fullName,
  fullName_katakana,
  university,
  faculty,
  department,
  schoolYear,
  hometown,
  birthDate,
  joinDate,
  talent,
  favoriteThing,
  fave,
  respectPerson,
  kanji,
  Yojijukugo,
  preciousWord,
  goodPersonality,
  badPersonality,
  idealSociety,
  dream,
  interst,
  hope,
  experience,
  challenge,
  closingWords,
  imgUrl,
  haystack,
}

extension StaffExtention on Staff {
  static final _staffColNames = {
    Staff.SkillTeam: 'スキルチーム',
    Staff.Terakoya: '寺子屋',
    Staff.prefectures: '活動する都道府県',
    Staff.fullName: '名前',
    Staff.fullName_katakana: 'フリガナ',
    Staff.university: '所属',
    Staff.faculty: '学部',
    Staff.department: '学科',
    Staff.schoolYear: '学年',
    Staff.hometown: '出身地',
    Staff.birthDate: '誕生日',
    Staff.joinDate: '加入日',
    Staff.talent: '特技',
    Staff.favoriteThing: '好きなこと',
    Staff.fave: '推し',
    Staff.respectPerson: '尊敬している人',
    Staff.kanji: '自分を表す漢字',
    Staff.Yojijukugo: '自分を表す四字熟語',
    Staff.preciousWord: '大切にしている言葉',
    Staff.goodPersonality: '自分の好きなところ',
    Staff.badPersonality: '自分の直したいところ',
    Staff.idealSociety: 'どんな社会になって欲しいですか？',
    Staff.dream: '将来の夢',
    Staff.interst: '関心のあること',
    Staff.hope: '団体に期待していること',
    Staff.experience: '活動を通じて経験したいこと',
    Staff.challenge: '活動を通じて挑戦してみたいこと',
    Staff.closingWords: '最後にひとこと',
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

  String asString() => toString().split('.').last;
}
