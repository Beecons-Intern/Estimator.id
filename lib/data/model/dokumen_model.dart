class DokumenFields {
  static final List<String> values = [idDokumen, idProyek, dokumen];

  static const String idDokumen = "id_dokumen";
  static const String idProyek = "id_proyek";
  static const String dokumen = "dokumen";
}

class DokumenModel {
  int? idDokumen;
  int idProyek;
  String dokumen;

  DokumenModel({this.idDokumen, required this.idProyek, required this.dokumen});

  DokumenModel copy({int? idDokumen, int? idProyek, String? dokumen}) =>
      DokumenModel(
          idDokumen: idDokumen ?? this.idDokumen,
          idProyek: idProyek ?? this.idProyek,
          dokumen: dokumen ?? this.dokumen);

  static DokumenModel fromJson(Map<String, Object?> json) => DokumenModel(
      idDokumen: json[DokumenFields.idDokumen] as int?,
      idProyek: json[DokumenFields.idProyek] as int,
      dokumen: json[DokumenFields.dokumen] as String);

  Map<String, Object?> toJson() =>
      {DokumenFields.idProyek: idProyek, DokumenFields.dokumen: dokumen};
}
