class TemplateHargaSatuanFields {
  static final List<String> values = [
    idHargaSatuan,
    idTemplate,
    idPekerjaan,
    namaPekerjaan,
    satuan,
    idKategori,
    level,
    haveSub,
    totalHarga,
    tempTotalHarga,
    sumber,
    tglDibuat,
    jamDibuat
  ];

  static const String idHargaSatuan = "id_harga_satuan";
  static const String idTemplate = "id_template";
  static const String idPekerjaan = "id_pekerjaan";
  static const String namaPekerjaan = "nama_pekerjaan";
  static const String satuan = "satuan";
  static const String idKategori = "id_kategori";
  static const String level = "level";
  static const String haveSub = "have_sub";
  static const String totalHarga = "total_harga";
  static const String tempTotalHarga = "temp_total_harga";
  static const String sumber = "sumber";
  static const String tglDibuat = "tgl_dibuat";
  static const String jamDibuat = "jam_dibuat";
}

class TemplateHargaSatuanModel {
  int? idHargaSatuan;
  int idTemplate;
  String idPekerjaan,
      namaPekerjaan,
      satuan,
      idKategori,
      level,
      haveSub,
      sumber,
      totalHarga,
      tempTotalHarga,
      tglDibuat,
      jamDibuat;

  TemplateHargaSatuanModel(
      {this.idHargaSatuan,
      required this.idTemplate,
      required this.idPekerjaan,
      required this.namaPekerjaan,
      required this.satuan,
      required this.idKategori,
      required this.level,
      required this.haveSub,
      required this.totalHarga,
      required this.tempTotalHarga,
      required this.sumber,
      required this.tglDibuat,
      required this.jamDibuat});

  static TemplateHargaSatuanModel fromJson(Map<String, Object?> json) =>
      TemplateHargaSatuanModel(
          idHargaSatuan: json[TemplateHargaSatuanFields.idHargaSatuan] as int?,
          idTemplate: json[TemplateHargaSatuanFields.idTemplate] as int,
          idPekerjaan: json[TemplateHargaSatuanFields.idPekerjaan] as String,
          namaPekerjaan:
              json[TemplateHargaSatuanFields.namaPekerjaan] as String,
          satuan: json[TemplateHargaSatuanFields.satuan] as String,
          idKategori: json[TemplateHargaSatuanFields.idKategori] as String,
          level: json[TemplateHargaSatuanFields.level] as String,
          haveSub: json[TemplateHargaSatuanFields.haveSub] as String,
          totalHarga: json[TemplateHargaSatuanFields.totalHarga].toString(),
          tempTotalHarga:
              json[TemplateHargaSatuanFields.tempTotalHarga].toString(),
          sumber: json[TemplateHargaSatuanFields.sumber] as String,
          tglDibuat: json[TemplateHargaSatuanFields.tglDibuat] as String,
          jamDibuat: json[TemplateHargaSatuanFields.jamDibuat] as String);
}
