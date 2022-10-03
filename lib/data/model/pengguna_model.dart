class PenggunaModel {
  String nama;

  PenggunaModel({required this.nama});

  factory PenggunaModel.fromJson(Map<String, dynamic> json) {
    return PenggunaModel(
      nama: json['nama_pengguna'].toString(),
    );
  }
}
