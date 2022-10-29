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
    nego,
    username,
    password,
    foto,
    kategoriAkun,
    jenisAkun,
    status,
    kodeVerifikasi,
    statusVerifikasi,
    tglDaftar,
    jamDaftar
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
  static const String nego = "nego";
  static const String username = "username";
  static const String password = "password";
  static const String foto = "foto";
  static const String kategoriAkun = "kategori_akun";
  static const String jenisAkun = "jenis_akun";
  static const String status = "status";
  static const String kodeVerifikasi = "kode_verifikasi";
  static const String statusVerifikasi = "status_verifikasi";
  static const String tglDaftar = "tgl_daftar";
  static const String jamDaftar = "jam_daftar";
}

class PenggunaModel {
  int? idPengguna;
  double hargaMin, hargaMax;
  String namaPengguna,
      profil,
      alamat,
      idWilayah,
      perusahaan,
      email,
      noTelp,
      noWa,
      website,
      nego,
      username,
      password,
      foto,
      kategoriAkun,
      jenisAkun,
      status,
      kodeVerifikasi,
      statusVerifikasi,
      tglDaftar,
      jamDaftar;

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
      required this.nego,
      required this.username,
      required this.password,
      required this.foto,
      required this.kategoriAkun,
      required this.jenisAkun,
      required this.status,
      required this.kodeVerifikasi,
      required this.statusVerifikasi,
      required this.tglDaftar,
      required this.jamDaftar});

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
          double? hargaMin,
          double? hargaMax,
          String? nego,
          String? username,
          String? password,
          String? foto,
          String? kategoriAkun,
          String? jenisAkun,
          String? status,
          String? kodeVerifikasi,
          String? statusVerifikasi,
          String? tglDaftar,
          String? jamDaftar}) =>
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
          nego: nego ?? this.nego,
          username: username ?? this.username,
          password: password ?? this.password,
          foto: foto ?? this.foto,
          kategoriAkun: kategoriAkun ?? this.kategoriAkun,
          jenisAkun: jenisAkun ?? this.jenisAkun,
          status: status ?? this.status,
          kodeVerifikasi: kodeVerifikasi ?? this.kodeVerifikasi,
          statusVerifikasi: statusVerifikasi ?? this.statusVerifikasi,
          tglDaftar: tglDaftar ?? this.tglDaftar,
          jamDaftar: jamDaftar ?? this.jamDaftar);

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
        hargaMin: json[PenggunaFields.hargaMin].runtimeType == double
            ? json[PenggunaFields.hargaMin] as double
            : double.parse(
                "${json[PenggunaFields.hargaMin] != null ? json[PenggunaFields.hargaMin].toString() : "0"}.0"),
        hargaMax: json[PenggunaFields.hargaMax].runtimeType == double
            ? json[PenggunaFields.hargaMax] as double
            : double.parse(
                "${json[PenggunaFields.hargaMax] != null ? json[PenggunaFields.hargaMax].toString() : "0"}.0"),
        nego: json[PenggunaFields.nego].toString(),
        username: json[PenggunaFields.username].toString(),
        password: json[PenggunaFields.password].toString(),
        foto: json[PenggunaFields.foto].toString(),
        kategoriAkun: json[PenggunaFields.kategoriAkun].toString(),
        jenisAkun: json[PenggunaFields.jenisAkun].toString(),
        status: json[PenggunaFields.status].toString(),
        kodeVerifikasi: json[PenggunaFields.kodeVerifikasi].toString(),
        statusVerifikasi: json[PenggunaFields.statusVerifikasi].toString(),
        tglDaftar: json[PenggunaFields.tglDaftar].toString(),
        jamDaftar: json[PenggunaFields.jamDaftar].toString());
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
        PenggunaFields.nego: nego.toString(),
        PenggunaFields.username: username.toString(),
        PenggunaFields.password: password.toString(),
        PenggunaFields.foto: foto.toString(),
        PenggunaFields.kategoriAkun: kategoriAkun.toString(),
        PenggunaFields.jenisAkun: jenisAkun.toString(),
        PenggunaFields.status: status.toString(),
        PenggunaFields.kodeVerifikasi: kodeVerifikasi.toString(),
        PenggunaFields.statusVerifikasi: statusVerifikasi.toString(),
        PenggunaFields.tglDaftar: tglDaftar.toString(),
        PenggunaFields.jamDaftar: jamDaftar.toString()
      };
}
