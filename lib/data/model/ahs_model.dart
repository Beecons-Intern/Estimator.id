class AhsFields {
  static final List<String> values = [
    idAhs,
    idProyek,
    idPelaksana,
    idKategoriPekerjaan,
    idPekerjaan,
    idPekerjaanDuplikat,
    namaKategoriPekerjaan,
    namaPekerjaan,
    satuanPekerjaan,
    kategori,
    idKategori,
    namaKategori,
    satuanKategori,
    spesifikasi,
    merk,
    tahunKategori,
    sumberKategori,
    keteranganKategori,
    tahun,
    sumber,
    keterangan,
    koefisien,
    hargaDasar,
  ];

  static const String idAhs = "id_ahs";
  static const String idProyek = "id_proyek";
  static const String idPelaksana = "id_pelaksana";
  static const String idKategoriPekerjaan = "id_kategori_pekerjaan";
  static const String idPekerjaan = "id_pekerjaan";
  static const String idPekerjaanDuplikat = "id_pekerjaan_duplikat";
  static const String namaKategoriPekerjaan = "nama_kategori_pekerjaan";
  static const String namaPekerjaan = "nama_pekerjaan";
  static const String satuanPekerjaan = "satuan_pekerjaan";
  static const String kategori = "kategori";
  static const String idKategori = "id_kategori";
  static const String namaKategori = "nama_kategori";
  static const String satuanKategori = "satuan_kategori";
  static const String spesifikasi = "spesifikasi";
  static const String merk = "merk";
  static const String tahunKategori = "tahun_kategori";
  static const String sumberKategori = "sumber_kategori";
  static const String keteranganKategori = "keterangan_kategori";
  static const String tahun = "tahun";
  static const String sumber = "sumber";
  static const String keterangan = "keterangan";
  static const String koefisien = "koefisien";
  static const String hargaDasar = "harga_dasar";
}

class AhsModel {
  int? idAhs, idProyek, idPelaksana;
  String idKategoriPekerjaan,
      idPekerjaan,
      idPekerjaanDuplikat,
      namaKategoriPekerjaan,
      namaPekerjaan,
      satuanPekerjaan,
      kategori,
      idKategori,
      namaKategori,
      satuanKategori,
      spesifikasi,
      merk,
      tahunKategori,
      sumberKategori,
      keteranganKategori,
      tahun,
      sumber,
      keterangan;
  double koefisien, hargaDasar;

  AhsModel({
    required this.idAhs,
    required this.idProyek,
    required this.idPelaksana,
    required this.idKategoriPekerjaan,
    required this.idPekerjaan,
    required this.idPekerjaanDuplikat,
    required this.namaKategoriPekerjaan,
    required this.namaPekerjaan,
    required this.satuanPekerjaan,
    required this.kategori,
    required this.idKategori,
    required this.namaKategori,
    required this.satuanKategori,
    required this.spesifikasi,
    required this.merk,
    required this.tahunKategori,
    required this.sumberKategori,
    required this.keterangan,
    required this.tahun,
    required this.sumber,
    required this.keteranganKategori,
    required this.koefisien,
    required this.hargaDasar,
  });

  static AhsModel fromJson(Map<String, dynamic> json) => AhsModel(
        idAhs: json[AhsFields.idAhs] as int?,
        idProyek: json[AhsFields.idProyek] as int?,
        idPelaksana: json[AhsFields.idPelaksana] as int?,
        idKategoriPekerjaan: json[AhsFields.idKategoriPekerjaan] as String,
        idPekerjaan: json[AhsFields.idPekerjaan] as String,
        idPekerjaanDuplikat: json[AhsFields.idPekerjaanDuplikat] as String,
        namaKategoriPekerjaan: json[AhsFields.namaKategoriPekerjaan] as String,
        namaPekerjaan: json[AhsFields.namaPekerjaan] as String,
        satuanPekerjaan: json[AhsFields.satuanPekerjaan] as String,
        kategori: json[AhsFields.kategori] as String,
        idKategori: json[AhsFields.idKategori] as String,
        namaKategori: json[AhsFields.namaKategori] as String,
        satuanKategori: json[AhsFields.satuanKategori] as String,
        spesifikasi: json[AhsFields.spesifikasi] as String,
        merk: json[AhsFields.merk] as String,
        tahunKategori: json[AhsFields.tahunKategori] as String,
        sumberKategori: json[AhsFields.sumberKategori] as String,
        keterangan: json[AhsFields.keterangan] as String,
        tahun: json[AhsFields.tahun] as String,
        sumber: json[AhsFields.sumber] as String,
        keteranganKategori: json[AhsFields.keteranganKategori] as String,
        koefisien: json[AhsFields.koefisien].runtimeType == double
            ? json[AhsFields.koefisien] as double
            : double.parse("${json[AhsFields.koefisien]}.0"),
        hargaDasar: json[AhsFields.hargaDasar].runtimeType == double
            ? json[AhsFields.hargaDasar] as double
            : double.parse("${json[AhsFields.hargaDasar]}.0"),
      );
}
