class PenggunaModel {
  int id;
  String nama,
      profil,
      alamat,
      idWilayah,
      perusahaan,
      email,
      noTelp,
      noWa,
      website,
      hargaMin,
      hargaMax,
      username,
      password,
      foto;

  PenggunaModel(
      {required this.id,
      required this.nama,
      required this.profil,
      required this.alamat,
      required this.idWilayah,
      required this.perusahaan,
      required this.email,
      required this.noTelp,
      required this.noWa,
      required this.website,
      required this.hargaMin,
      required this.hargaMax,
      required this.username,
      required this.password,
      required this.foto});

  factory PenggunaModel.fromJson(Map<String, dynamic> json) {
    return PenggunaModel(
      id: json["id_pengguna"],
      nama: json['nama_pengguna'].toString(),
      profil: json['profil'].toString(),
      alamat: json['alamat'].toString(),
      idWilayah: json['id_wilayah'].toString(),
      perusahaan: json['perusahaan'].toString(),
      email: json['email'].toString(),
      noTelp: json['no_telp'].toString(),
      noWa: json['no_wa'].toString(),
      website: json['website'].toString(),
      hargaMin: json['harga_min'].toString(),
      hargaMax: json['harga_max'].toString(),
      username: json['username'].toString(),
      password: json['password'].toString(),
      foto: json['foto'].toString(),
    );
  }
}
