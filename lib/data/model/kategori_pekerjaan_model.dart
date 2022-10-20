class KategoriPekerjaanFields {
  static final List<String> values = [
    idKategori,
    idProyek,
    idPelaksana,
    level,
    kategori
  ];

  static const String idKategori = "id_kategori";
  static const String idProyek = "id_proyek";
  static const String idPelaksana = "id_pelaksana";
  static const String level = "level";
  static const String kategori = "kategori";
}

class KategoriPekerjaanModel {
  int? idKategori;
  int idProyek, idPelaksana;
  String level, kategori;

  KategoriPekerjaanModel(
      {this.idKategori,
      required this.idProyek,
      required this.idPelaksana,
      required this.level,
      required this.kategori});

  KategoriPekerjaanModel copy(
          {int? idKategori,
          int? idProyek,
          int? idPelaksana,
          String? level,
          String? kategori}) =>
      KategoriPekerjaanModel(
          idKategori: idKategori ?? this.idKategori,
          idProyek: idProyek ?? this.idProyek,
          idPelaksana: idPelaksana ?? this.idPelaksana,
          level: level ?? this.level,
          kategori: kategori ?? this.kategori);

  static KategoriPekerjaanModel fromJson(Map<String, Object?> json) =>
      KategoriPekerjaanModel(
          idKategori: json[KategoriPekerjaanFields.idKategori] as int?,
          idProyek: json[KategoriPekerjaanFields.idProyek] as int,
          idPelaksana: json[KategoriPekerjaanFields.idPelaksana] as int,
          level: json[KategoriPekerjaanFields.level] as String,
          kategori: json[KategoriPekerjaanFields.kategori] as String);

  Map<String, Object?> toJson() => {
        KategoriPekerjaanFields.idProyek: idProyek,
        KategoriPekerjaanFields.idPelaksana: idPelaksana,
        KategoriPekerjaanFields.level: level,
        KategoriPekerjaanFields.kategori: kategori
      };
}
