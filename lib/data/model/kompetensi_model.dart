class KompetensiFields {
  static final List<String> values = [
    idKompetensi,
    idPengguna,
    kompetensi,
  ];

  static const String idKompetensi = "id_kompetensi";
  static const String idPengguna = "id_pengguna";
  static const String kompetensi = "kompetensi";
}

class KompetensiModel {
  int? idKompetensi;
  int idPengguna;
  String kompetensi;

  KompetensiModel(
      {this.idKompetensi, required this.idPengguna, required this.kompetensi});

  KompetensiModel copy(
          {int? idKompetensi, int? idPengguna, String? kompetensi}) =>
      KompetensiModel(
          idKompetensi: idKompetensi ?? this.idKompetensi,
          idPengguna: idPengguna ?? this.idPengguna,
          kompetensi: kompetensi ?? this.kompetensi);

  static KompetensiModel fromJson(Map<String, Object?> json) => KompetensiModel(
      idKompetensi: json[KompetensiFields.idKompetensi] as int?,
      idPengguna: json[KompetensiFields.idPengguna] as int,
      kompetensi: json[KompetensiFields.kompetensi] as String);

  Map<String, Object?> toJson() => {
        KompetensiFields.idPengguna: idPengguna,
        KompetensiFields.kompetensi: kompetensi,
      };
}
