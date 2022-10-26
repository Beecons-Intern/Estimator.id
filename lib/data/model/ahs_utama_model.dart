class AHSUtamaFields {
  static final List<String> values = [
    idAhs,
    idKategoriPekerjaan,
    idPekerjaan,
    namaKategoriPekerjaan,
    namaPekerjaan,
    satuanPekerjaan,
    kategori,
    idKategori,
    koefisien,
    namaKategori,
    satuanKategori,
    spesifikasi,
    merk,
    tahun,
    sumber,
    keterangan,
    tanggalDibuat,
    jamDibuat,
  ];

  static const String idAhs = "id_ahs";
  static const String idKategoriPekerjaan = "id_kategori_pekerjaan";
  static const String idPekerjaan = "id_pekerjaan";
  static const String namaKategoriPekerjaan = "nama_kategori_pekerjaan";
  static const String namaPekerjaan = "nama_pekerjaan";
  static const String satuanPekerjaan = "satuan_pekerjaan";
  static const String kategori = "kategori";
  static const String idKategori = "id_kategori";
  static const String koefisien = "koefisien";
  static const String namaKategori = "nama_kategori";
  static const String satuanKategori = "satuan_kategori";
  static const String spesifikasi = "spesifikasi";
  static const String merk = "merk";
  static const String tahun = "tahun";
  static const String sumber = "sumber";
  static const String keterangan = "keterangan";
  static const String tanggalDibuat = "tgl_dibuat";
  static const String jamDibuat = "jam_dibuat";
}

class AHSUtamaModel {
  int? idAhs;
  String idKategoriPekerjaan,
      idPekerjaan,
      namaKategoriPekerjaan,
      namaPekerjaan,
      satuanPekerjaan,
      kategori,
      idKategori,
      namaKategori,
      satuanKategori,
      spesifikasi,
      merk,
      tahun,
      sumber,
      keterangan,
      tanggalDibuat,
      jamDibuat;
  double koefisien;

  AHSUtamaModel({
    this.idAhs,
    required this.idKategoriPekerjaan,
    required this.idPekerjaan,
    required this.namaKategoriPekerjaan,
    required this.namaPekerjaan,
    required this.satuanPekerjaan,
    required this.kategori,
    required this.idKategori,
    required this.koefisien,
    required this.namaKategori,
    required this.satuanKategori,
    required this.spesifikasi,
    required this.merk,
    required this.tahun,
    required this.sumber,
    required this.keterangan,
    required this.tanggalDibuat,
    required this.jamDibuat,
  });

  static AHSUtamaModel fromJson(Map<String, Object?> json) => AHSUtamaModel(
        idAhs: json[AHSUtamaFields.idAhs] as int?,
        idKategoriPekerjaan: json[AHSUtamaFields.idKategoriPekerjaan] as String,
        idPekerjaan: json[AHSUtamaFields.idPekerjaan] as String,
        namaKategoriPekerjaan:
            json[AHSUtamaFields.namaKategoriPekerjaan] as String,
        namaPekerjaan: json[AHSUtamaFields.namaPekerjaan] as String,
        satuanPekerjaan: json[AHSUtamaFields.satuanPekerjaan] as String,
        kategori: json[AHSUtamaFields.kategori] as String,
        idKategori: json[AHSUtamaFields.idKategori] as String,
        koefisien: json[AHSUtamaFields.koefisien].runtimeType == double
            ? json[AHSUtamaFields.koefisien] as double
            : double.parse("${json[AHSUtamaFields.koefisien]}.0"),
        namaKategori: json[AHSUtamaFields.namaKategori] as String,
        satuanKategori: json[AHSUtamaFields.satuanKategori] as String,
        spesifikasi: json[AHSUtamaFields.spesifikasi] as String,
        merk: json[AHSUtamaFields.merk] as String,
        tahun: json[AHSUtamaFields.tahun] as String,
        sumber: json[AHSUtamaFields.sumber] as String,
        keterangan: json[AHSUtamaFields.keterangan] as String,
        tanggalDibuat: json[AHSUtamaFields.tanggalDibuat] as String,
        jamDibuat: json[AHSUtamaFields.jamDibuat] as String,
      );
}
