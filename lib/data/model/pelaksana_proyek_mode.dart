class PelaksanaProyekFields {
  static final List<String> values = [
    idPelaksana,
    idProyek,
    idPengguna,
    posisi,
    status
  ];

  static const String idPelaksana = "id_pelaksana";
  static const String idProyek = "id_proyek";
  static const String idPengguna = "id_pengguna";
  static const String posisi = "posisi";
  static const String status = "status";
}

class PelaksanaProyekModel {
  int? idPelaksana;
  int idProyek, idPengguna;
  String posisi, status;

  PelaksanaProyekModel(
      {this.idPelaksana,
      required this.idProyek,
      required this.idPengguna,
      required this.posisi,
      required this.status});

  PelaksanaProyekModel copy(
          {int? idPelaksana,
          int? idProyek,
          int? idPengguna,
          String? posisi,
          String? status}) =>
      PelaksanaProyekModel(
          idPelaksana: idPelaksana ?? this.idPelaksana,
          idProyek: idProyek ?? this.idProyek,
          idPengguna: idPengguna ?? this.idPengguna,
          posisi: posisi ?? this.posisi,
          status: status ?? this.status);

  static PelaksanaProyekModel fromJson(Map<String, Object?> json) =>
      PelaksanaProyekModel(
          idPelaksana: json[PelaksanaProyekFields.idPelaksana] as int?,
          idProyek: json[PelaksanaProyekFields.idProyek] as int,
          idPengguna: json[PelaksanaProyekFields.idPengguna] as int,
          posisi: json[PelaksanaProyekFields.posisi] as String,
          status: json[PelaksanaProyekFields.status] as String);

  Map<String, Object?> toJson() => {
        PelaksanaProyekFields.idProyek: idProyek,
        PelaksanaProyekFields.idPengguna: idPengguna,
        PelaksanaProyekFields.posisi: posisi,
        PelaksanaProyekFields.status: status
      };
}
