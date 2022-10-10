class PengalamanProyekFields {
  static final List<String> values = [
    idPengalaman,
    idPengguna,
    namaProyek,
    tahun,
    posisi
  ];

  static const String idPengalaman = "id_pengalaman";
  static const String idPengguna = "id_pengguna";
  static const String namaProyek = "nama_proyek";
  static const String tahun = "tahun";
  static const String posisi = "posisi";
}

class PengalamanProyekModel {
  int? idPengalaman;
  String idPengguna, namaProyek, tahun, posisi;

  PengalamanProyekModel(
      {this.idPengalaman,
      required this.idPengguna,
      required this.namaProyek,
      required this.tahun,
      required this.posisi});

  PengalamanProyekModel copy(
          {int? idPengalaman,
          String? idPengguna,
          String? namaProyek,
          String? tahun,
          String? posisi}) =>
      PengalamanProyekModel(
          idPengalaman: idPengalaman ?? this.idPengalaman,
          idPengguna: idPengguna ?? this.idPengguna,
          namaProyek: namaProyek ?? this.namaProyek,
          tahun: tahun ?? this.tahun,
          posisi: posisi ?? this.posisi);

  static PengalamanProyekModel fromJson(Map<String, Object?> json) =>
      PengalamanProyekModel(
          idPengalaman: json[PengalamanProyekFields.idPengalaman] as int?,
          idPengguna: json[PengalamanProyekFields.idPengguna].toString(),
          namaProyek: json[PengalamanProyekFields.namaProyek].toString(),
          tahun: json[PengalamanProyekFields.tahun].toString(),
          posisi: json[PengalamanProyekFields.posisi].toString());

  Map<String, Object?> toJson() => {
        PengalamanProyekFields.idPengguna: idPengguna,
        PengalamanProyekFields.namaProyek: namaProyek,
        PengalamanProyekFields.tahun: tahun,
        PengalamanProyekFields.posisi: posisi
      };
}
