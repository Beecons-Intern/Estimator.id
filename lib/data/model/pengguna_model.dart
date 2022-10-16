class PenggunaFields {
  static final List<String> values = [
    idPengguna,
    namaPengguna,
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
    foto
  ];

  static const String idPengguna = "id_pengguna";
  static const String namaPengguna = "nama_pengguna";
  static const String profil = "profil";
  static const String alamat = "alamat";
  static const String idWilayah = "id_wilayah";
  static const String perusahaan = "perusahaan";
  static const String email = "email";
  static const String noTelp = "no_telp";
  static const String noWa = "no_wa";
  static const String website = "website";
  static const String hargaMin = "harga_min";
  static const String hargaMax = "harga_max";
  static const String username = "username";
  static const String foto = "foto";
}

class PenggunaModel {
  int? idPengguna;
  String namaPengguna,
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
      foto;

  PenggunaModel(
      {this.idPengguna,
      required this.namaPengguna,
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
      required this.foto});

  PenggunaModel copy(
          {int? idPengguna,
          String? namaPengguna,
          String? profil,
          String? alamat,
          String? idWilayah,
          String? perusahaan,
          String? email,
          String? noTelp,
          String? noWa,
          String? website,
          String? hargaMin,
          String? hargaMax,
          String? username,
          String? foto}) =>
      PenggunaModel(
          idPengguna: idPengguna ?? this.idPengguna,
          namaPengguna: namaPengguna ?? this.namaPengguna,
          profil: profil ?? this.profil,
          alamat: alamat ?? this.alamat,
          idWilayah: idWilayah ?? this.idWilayah,
          perusahaan: perusahaan ?? this.perusahaan,
          email: email ?? this.email,
          noTelp: noTelp ?? this.noTelp,
          noWa: noWa ?? this.noWa,
          website: website ?? this.website,
          hargaMin: hargaMin ?? this.hargaMin,
          hargaMax: hargaMax ?? this.hargaMax,
          username: username ?? this.username,
          foto: foto ?? this.foto);

  static PenggunaModel fromJson(Map<String, Object?> json) {
    return PenggunaModel(
      idPengguna: json[PenggunaFields.idPengguna] as int?,
      namaPengguna: json[PenggunaFields.namaPengguna].toString(),
      profil: json[PenggunaFields.profil].toString(),
      alamat: json[PenggunaFields.alamat].toString(),
      idWilayah: json[PenggunaFields.idWilayah].toString(),
      perusahaan: json[PenggunaFields.perusahaan].toString(),
      email: json[PenggunaFields.email].toString(),
      noTelp: json[PenggunaFields.noTelp].toString(),
      noWa: json[PenggunaFields.noWa].toString(),
      website: json[PenggunaFields.website].toString(),
      hargaMin: json[PenggunaFields.hargaMin].toString(),
      hargaMax: json[PenggunaFields.hargaMax].toString(),
      username: json[PenggunaFields.username].toString(),
      foto: json[PenggunaFields.foto].toString(),
    );
  }

  Map<String, Object?> toJson() => {
        PenggunaFields.namaPengguna: namaPengguna.toString(),
        PenggunaFields.profil: profil.toString(),
        PenggunaFields.alamat: alamat.toString(),
        PenggunaFields.idWilayah: idWilayah.toString(),
        PenggunaFields.perusahaan: perusahaan.toString(),
        PenggunaFields.email: email.toString(),
        PenggunaFields.noTelp: noTelp.toString(),
        PenggunaFields.noWa: noWa.toString(),
        PenggunaFields.website: website.toString(),
        PenggunaFields.hargaMin: hargaMin.toString(),
        PenggunaFields.hargaMax: hargaMax.toString(),
        PenggunaFields.username: username.toString(),
        PenggunaFields.foto: foto.toString(),
      };
}
