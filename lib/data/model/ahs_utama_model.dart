class AhsUtamaField {
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

class AhsUtamaModel {
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

  AhsUtamaModel({
    required this.idAhs,
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

  static AhsUtamaModel fromJson(Map<String, dynamic> json) => AhsUtamaModel(
        idAhs: json[AhsUtamaField.idAhs] as int?,
        idKategoriPekerjaan: json[AhsUtamaField.idKategoriPekerjaan] as String,
        idPekerjaan: json[AhsUtamaField.idPekerjaan] as String,
        namaKategoriPekerjaan:
            json[AhsUtamaField.namaKategoriPekerjaan] as String,
        namaPekerjaan: json[AhsUtamaField.namaPekerjaan] as String,
        satuanPekerjaan: json[AhsUtamaField.satuanPekerjaan] as String,
        kategori: json[AhsUtamaField.kategori] as String,
        idKategori: json[AhsUtamaField.idKategori] as String,
        koefisien: json[AhsUtamaField.koefisien].runtimeType == double
            ? json[AhsUtamaField.koefisien] as double
            : double.parse("${json[AhsUtamaField.koefisien]}.0"),
        namaKategori: json[AhsUtamaField.namaKategori] as String,
        satuanKategori: json[AhsUtamaField.satuanKategori] as String,
        spesifikasi: json[AhsUtamaField.spesifikasi] as String,
        merk: json[AhsUtamaField.merk] as String,
        tahun: json[AhsUtamaField.tahun] as String,
        sumber: json[AhsUtamaField.sumber] as String,
        keterangan: json[AhsUtamaField.keterangan] as String,
        tanggalDibuat: json[AhsUtamaField.tanggalDibuat] as String,
        jamDibuat: json[AhsUtamaField.jamDibuat],
      );
}
