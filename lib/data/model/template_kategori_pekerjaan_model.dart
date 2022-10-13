class TemplateKategoriPekerjaanFields {
  static final List<String> values = [
    idKategori,
    idTemplate,
    level,
    kategori,
  ];

  static const String idKategori = "id_kategori";
  static const String idTemplate = "id_template";
  static const String level = "level";
  static const String kategori = "kategori";
}

class TemplateKategoriPekerjaanModel {
  int? idKategori;
  int idTemplate;
  String level, kategori;

  TemplateKategoriPekerjaanModel(
      {this.idKategori,
      required this.idTemplate,
      required this.level,
      required this.kategori});

  TemplateKategoriPekerjaanModel copy(
          {int? idKategori,
          int? idTemplate,
          String? level,
          String? kategori}) =>
      TemplateKategoriPekerjaanModel(
          idKategori: idKategori ?? this.idKategori,
          idTemplate: idTemplate ?? this.idTemplate,
          level: level ?? this.level,
          kategori: kategori ?? this.kategori);

  static TemplateKategoriPekerjaanModel fromJson(Map<String, Object?> json) {
    return TemplateKategoriPekerjaanModel(
        idKategori: json[TemplateKategoriPekerjaanFields.idKategori] as int?,
        idTemplate: json[TemplateKategoriPekerjaanFields.idTemplate] as int,
        level: json[TemplateKategoriPekerjaanFields.level] as String,
        kategori: json[TemplateKategoriPekerjaanFields.kategori] as String);
  }

  Map<String, Object?> toJson() => {
        TemplateKategoriPekerjaanFields.idTemplate: idTemplate,
        TemplateKategoriPekerjaanFields.level: level,
        TemplateKategoriPekerjaanFields.kategori: kategori,
      };
}
