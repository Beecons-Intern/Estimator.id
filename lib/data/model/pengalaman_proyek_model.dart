class PengalamanProyekModel {
  int idPengalaman;
  String idPengguna, namaProyek, tahun, posisi;

  PengalamanProyekModel(
      {required this.idPengalaman,
      required this.idPengguna,
      required this.namaProyek,
      required this.tahun,
      required this.posisi});

  factory PengalamanProyekModel.fromJson(Map<String, dynamic> json) {
    return PengalamanProyekModel(
        idPengalaman: json["id_pengalaman"],
        idPengguna: json["id_pengguna"].toString(),
        namaProyek: json["nama_proyek"].toString(),
        tahun: json["tahun"].toString(),
        posisi: json["posisi"].toString());
  }
}
