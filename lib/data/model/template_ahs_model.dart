class TemplateAHSFields {
  static final List<String> values = [
    idAhs,
    idTemplate,
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
  static const String idTemplate = "id_template";
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

class TemplateAHSModel {
  int? idAhs;
  int idTemplate;
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

  TemplateAHSModel(
      {this.idAhs,
      required this.idTemplate,
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

  static TemplateAHSModel fromJson(Map<String, Object?> json) =>
      TemplateAHSModel(
          idAhs: json[TemplateAHSFields.idAhs] as int?,
          idTemplate: json[TemplateAHSFields.idTemplate] as int,
          idKategoriPekerjaan:
              json[TemplateAHSFields.idKategoriPekerjaan] as String,
          idPekerjaan: json[TemplateAHSFields.idPekerjaan] as String,
          idPekerjaanDuplikat:
              json[TemplateAHSFields.idPekerjaanDuplikat] as String,
          namaKategoriPekerjaan:
              json[TemplateAHSFields.namaKategoriPekerjaan] as String,
          namaPekerjaan: json[TemplateAHSFields.namaPekerjaan] as String,
          satuanPekerjaan: json[TemplateAHSFields.satuanPekerjaan] as String,
          kategori: json[TemplateAHSFields.kategori] as String,
          idKategori: json[TemplateAHSFields.idKategori] as String,
          koefisien: json[TemplateAHSFields.koefisien].toString(),
          namaKategori: json[TemplateAHSFields.namaKategori] as String,
          satuanKategori: json[TemplateAHSFields.satuanKategori] as String,
          spesifikasi: json[TemplateAHSFields.spesifikasi] as String,
          merk: json[TemplateAHSFields.merk] as String,
          tahunKategori: json[TemplateAHSFields.tahunKategori] as String,
          sumberKategori: json[TemplateAHSFields.sumberKategori] as String,
          keteranganKategori:
              json[TemplateAHSFields.keteranganKategori] as String,
          hargaDasar: json[TemplateAHSFields.hargaDasar].toString(),
          tahun: json[TemplateAHSFields.tahun] as String,
          sumber: json[TemplateAHSFields.sumber] as String,
          keterangan: json[TemplateAHSFields.keterangan] as String,
          tglDibuat: json[TemplateAHSFields.tglDibuat] as String,
          jamDibuat: json[TemplateAHSFields.jamDibuat] as String);
}
