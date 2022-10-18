class AHSFields {
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
    koefisien,
    namaKategori,
    satuanKategori,
    spesifikasi,
    merk,
    tahunKategori,
    sumberKategori,
    keteranganKategori,
    hargaDasar,
    tahun,
    sumber,
    keterangan,
    tglDibuat,
    jamDibuat
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
  static const String koefisien = "koefisien";
  static const String namaKategori = "nama_kategori";
  static const String satuanKategori = "satuan_kategori";
  static const String spesifikasi = "spesifikasi";
  static const String merk = "merk";
  static const String tahunKategori = "tahun_kategori";
  static const String sumberKategori = "sumber_kategori";
  static const String keteranganKategori = "keterangan_kategori";
  static const String hargaDasar = "harga_dasar";
  static const String tahun = "tahun";
  static const String sumber = "sumber";
  static const String keterangan = "keterangan";
  static const String tglDibuat = "tgl_dibuat";
  static const String jamDibuat = "jam_dibuat";
}

class AHSModel {
  int? idAhs;
  int idProyek, idPelaksana;
  String idKategoriPekerjaan,
      idPekerjaan,
      idPekerjaanDuplikat,
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
      tahunKategori,
      sumberKategori,
      keteranganKategori,
      hargaDasar,
      tahun,
      sumber,
      keterangan,
      tglDibuat,
      jamDibuat;

  AHSModel(
      {this.idAhs,
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
      required this.koefisien,
      required this.namaKategori,
      required this.satuanKategori,
      required this.spesifikasi,
      required this.merk,
      required this.tahunKategori,
      required this.sumberKategori,
      required this.keteranganKategori,
      required this.hargaDasar,
      required this.tahun,
      required this.sumber,
      required this.keterangan,
      required this.tglDibuat,
      required this.jamDibuat});

  AHSModel copy(
          {int? idAhs,
          int? idProyek,
          int? idPelaksana,
          String? idKategoriPekerjaan,
          String? idPekerjaan,
          String? idPekerjaanDuplikat,
          String? namaKategoriPekerjaan,
          String? namaPekerjaan,
          String? satuanPekerjaan,
          String? kategori,
          String? idKategori,
          String? koefisien,
          String? namaKategori,
          String? satuanKategori,
          String? spesifikasi,
          String? merk,
          String? tahunKategori,
          String? sumberKategori,
          String? keteranganKategori,
          String? hargaDasar,
          String? tahun,
          String? sumber,
          String? keterangan,
          String? tglDibuat,
          String? jamDibuat}) =>
      AHSModel(
          idAhs: idAhs ?? this.idAhs,
          idProyek: idProyek ?? this.idProyek,
          idPelaksana: idPelaksana ?? this.idPelaksana,
          idKategoriPekerjaan: idKategoriPekerjaan ?? this.idKategoriPekerjaan,
          idPekerjaan: idPekerjaan ?? this.idPekerjaan,
          idPekerjaanDuplikat: idPekerjaanDuplikat ?? this.idPekerjaanDuplikat,
          namaKategoriPekerjaan:
              namaKategoriPekerjaan ?? this.namaKategoriPekerjaan,
          namaPekerjaan: namaPekerjaan ?? this.namaPekerjaan,
          satuanPekerjaan: satuanPekerjaan ?? this.satuanPekerjaan,
          kategori: kategori ?? this.kategori,
          idKategori: idKategori ?? this.idKategori,
          koefisien: koefisien ?? this.koefisien,
          namaKategori: namaKategori ?? this.namaKategori,
          satuanKategori: satuanKategori ?? this.satuanKategori,
          spesifikasi: spesifikasi ?? this.spesifikasi,
          merk: merk ?? this.merk,
          tahunKategori: tahunKategori ?? this.tahunKategori,
          sumberKategori: sumberKategori ?? this.sumberKategori,
          keteranganKategori: keteranganKategori ?? this.keteranganKategori,
          hargaDasar: hargaDasar ?? this.hargaDasar,
          tahun: tahun ?? this.tahun,
          sumber: sumber ?? this.sumber,
          keterangan: keterangan ?? this.keterangan,
          tglDibuat: tglDibuat ?? this.tglDibuat,
          jamDibuat: jamDibuat ?? this.jamDibuat);

  static AHSModel fromJson(Map<String, Object?> json) => AHSModel(
      idAhs: json[AHSFields.idAhs] as int?,
      idProyek: json[AHSFields.idProyek] as int,
      idPelaksana: json[AHSFields.idPelaksana] as int,
      idKategoriPekerjaan: json[AHSFields.idKategoriPekerjaan] as String,
      idPekerjaan: json[AHSFields.idPekerjaan] as String,
      idPekerjaanDuplikat: json[AHSFields.idPekerjaanDuplikat] as String,
      namaKategoriPekerjaan: json[AHSFields.namaKategoriPekerjaan] as String,
      namaPekerjaan: json[AHSFields.namaPekerjaan] as String,
      satuanPekerjaan: json[AHSFields.satuanPekerjaan] as String,
      kategori: json[AHSFields.kategori] as String,
      idKategori: json[AHSFields.idKategori] as String,
      koefisien: json[AHSFields.koefisien] as String,
      namaKategori: json[AHSFields.namaKategori] as String,
      satuanKategori: json[AHSFields.satuanKategori] as String,
      spesifikasi: json[AHSFields.spesifikasi] as String,
      merk: json[AHSFields.merk] as String,
      tahunKategori: json[AHSFields.tahunKategori] as String,
      sumberKategori: json[AHSFields.sumberKategori] as String,
      keteranganKategori: json[AHSFields.keteranganKategori] as String,
      hargaDasar: json[AHSFields.hargaDasar] as String,
      tahun: json[AHSFields.tahun] as String,
      sumber: json[AHSFields.sumber] as String,
      keterangan: json[AHSFields.keterangan] as String,
      tglDibuat: json[AHSFields.tglDibuat] as String,
      jamDibuat: json[AHSFields.jamDibuat] as String);

  Map<String, Object?> toJson() => {
        AHSFields.idProyek: idProyek,
        AHSFields.idPelaksana: idPelaksana,
        AHSFields.idKategoriPekerjaan: idKategoriPekerjaan,
        AHSFields.idPekerjaan: idPekerjaan,
        AHSFields.idPekerjaanDuplikat: idPekerjaanDuplikat,
        AHSFields.namaKategoriPekerjaan: namaKategoriPekerjaan,
        AHSFields.namaPekerjaan: namaPekerjaan,
        AHSFields.satuanPekerjaan: satuanPekerjaan,
        AHSFields.kategori: kategori,
        AHSFields.idKategori: idKategori,
        AHSFields.koefisien: koefisien,
        AHSFields.namaKategori: namaKategori,
        AHSFields.satuanKategori: satuanKategori,
        AHSFields.spesifikasi: spesifikasi,
        AHSFields.merk: merk,
        AHSFields.tahunKategori: tahunKategori,
        AHSFields.sumberKategori: sumberKategori,
        AHSFields.keteranganKategori: keteranganKategori,
        AHSFields.hargaDasar: hargaDasar,
        AHSFields.tahun: tahun,
        AHSFields.sumber: sumber,
        AHSFields.keterangan: keterangan,
        AHSFields.tglDibuat: tglDibuat,
        AHSFields.jamDibuat: jamDibuat,
      };
}
