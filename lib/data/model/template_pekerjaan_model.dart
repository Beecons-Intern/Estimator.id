class TemplatePekerjaanFields {
  static final List<String> values = [
    urut,
    idTemplate,
    idKategoriPekerjaan,
    idPekerjaan,
    satuan,
    publish,
    tglDibuat,
    jamDibuat
  ];

  static const String urut = "urut";
  static const String idTemplate = "id_template";
  static const String idKategoriPekerjaan = "id_kategori_pekerjaan";
  static const String idPekerjaan = "id_pekerjaan";
  static const String namaPekerjaan = "nama_pekerjaan";
  static const String satuan = "satuan";
  static const String publish = "publish";
  static const String tglDibuat = "tgl_dibuat";
  static const String jamDibuat = "jam_dibuat";
}

class TemplatePekerjaanModel {
  int? urut;
  int idTemplate;
  String idKategoriPekerjaan,
      idPekerjaan,
      namaPekerjaan,
      satuan,
      publish,
      tglDibuat,
      jamDibuat;

  TemplatePekerjaanModel(
      {this.urut,
      required this.idTemplate,
      required this.idKategoriPekerjaan,
      required this.idPekerjaan,
      required this.namaPekerjaan,
      required this.satuan,
      required this.publish,
      required this.tglDibuat,
      required this.jamDibuat});

  static TemplatePekerjaanModel fromJson(Map<String, Object?> json) =>
      TemplatePekerjaanModel(
          urut: json[TemplatePekerjaanFields.urut] as int?,
          idTemplate: json[TemplatePekerjaanFields.idTemplate] as int,
          idKategoriPekerjaan:
              json[TemplatePekerjaanFields.idKategoriPekerjaan] as String,
          idPekerjaan: json[TemplatePekerjaanFields.idPekerjaan] as String,
          namaPekerjaan: json[TemplatePekerjaanFields.namaPekerjaan] as String,
          satuan: json[TemplatePekerjaanFields.satuan] as String,
          publish: json[TemplatePekerjaanFields.publish] as String,
          tglDibuat: json[TemplatePekerjaanFields.tglDibuat] as String,
          jamDibuat: json[TemplatePekerjaanFields.jamDibuat] as String);
}
