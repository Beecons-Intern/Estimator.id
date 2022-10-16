class KesalahanFields {
  static final List<String> values = [
    idBugs,
    idPengguna,
    bug,
    tglDibuat,
    jamDibuat
  ];

  static const String idBugs = "id_bugs";
  static const String idPengguna = "id_pengguna";
  static const String bug = "bug";
  static const String tglDibuat = "tgl_dibuat";
  static const String jamDibuat = "jam_dibuat";
}

class KesalahanModel {
  int? idBugs;
  int idPengguna;
  String bug, tglDibuat, jamDibuat;

  KesalahanModel(
      {this.idBugs,
      required this.idPengguna,
      required this.bug,
      required this.tglDibuat,
      required this.jamDibuat});

  KesalahanModel copy(
          {int? idBugs,
          int? idPengguna,
          String? bug,
          String? tglDibuat,
          String? jamDibuat}) =>
      KesalahanModel(
          idBugs: idBugs ?? this.idBugs,
          idPengguna: idPengguna ?? this.idPengguna,
          bug: bug ?? this.bug,
          tglDibuat: tglDibuat ?? this.tglDibuat,
          jamDibuat: jamDibuat ?? this.jamDibuat);

  static KesalahanModel fromJson(Map<String, Object?> json) => KesalahanModel(
      idBugs: json[KesalahanFields.idBugs] as int?,
      idPengguna: json[KesalahanFields.idPengguna] as int,
      bug: json[KesalahanFields.bug] as String,
      tglDibuat: json[KesalahanFields.tglDibuat] as String,
      jamDibuat: json[KesalahanFields.jamDibuat] as String);

  Map<String, Object?> toJson() => {
        KesalahanFields.idPengguna: idPengguna,
        KesalahanFields.bug: bug,
        KesalahanFields.tglDibuat: tglDibuat,
        KesalahanFields.jamDibuat: jamDibuat
      };

  Map<String, Object?> updateToJson() => {
        KesalahanFields.bug: bug,
      };
}
