class TemplateProyekFields {
  static final List<String> values = [
    idTemplate,
    namaProyek,
    deskripsi,
    jenisProyek,
    kategoriProyek,
    struktur,
    lantai,
    dinding,
    atap,
    jasaKontraktor,
    pajak,
    status,
    foto,
    tglDibuat,
    jamDibuat
  ];

  static const String idTemplate = "id_template";
  static const String namaProyek = "nama_proyek";
  static const String deskripsi = "deskripsi";
  static const String jenisProyek = "jenis_proyek";
  static const String kategoriProyek = "kategori_proyek";
  static const String struktur = "struktur";
  static const String lantai = "lantai";
  static const String dinding = "dinding";
  static const String atap = "atap";
  static const String jasaKontraktor = "jasa_kontraktor";
  static const String pajak = "pajak";
  static const String status = "status";
  static const String foto = "foto";
  static const String tglDibuat = "tgl_dibuat";
  static const String jamDibuat = "jam_dibuat";
}

class TemplateProyekModel {
  int? idTemplate;
  String namaProyek,
      deskripsi,
      jenisProyek,
      kategoriProyek,
      struktur,
      lantai,
      dinding,
      atap,
      status,
      foto,
      jasaKontraktor,
      pajak,
      tglDibuat,
      jamDibuat;

  TemplateProyekModel(
      {this.idTemplate,
      required this.namaProyek,
      required this.deskripsi,
      required this.jenisProyek,
      required this.kategoriProyek,
      required this.struktur,
      required this.lantai,
      required this.dinding,
      required this.atap,
      required this.jasaKontraktor,
      required this.pajak,
      required this.status,
      required this.foto,
      required this.tglDibuat,
      required this.jamDibuat});

  TemplateProyekModel copy({
    int? idTemplate,
    String? jasaKontraktor,
    String? pajak,
    String? namaProyek,
    String? deskripsi,
    String? jenisProyek,
    String? kategoriProyek,
    String? struktur,
    String? lantai,
    String? dinding,
    String? atap,
    String? status,
    String? foto,
    String? tglDibuat,
    String? jamDibuat,
  }) =>
      TemplateProyekModel(
          namaProyek: namaProyek ?? this.namaProyek,
          deskripsi: deskripsi ?? this.deskripsi,
          jenisProyek: jenisProyek ?? this.jenisProyek,
          kategoriProyek: kategoriProyek ?? this.kategoriProyek,
          struktur: struktur ?? this.struktur,
          lantai: lantai ?? this.lantai,
          dinding: dinding ?? this.dinding,
          atap: atap ?? this.atap,
          jasaKontraktor: jasaKontraktor ?? this.jasaKontraktor,
          pajak: pajak ?? this.pajak,
          status: status ?? this.status,
          foto: foto ?? this.foto,
          tglDibuat: tglDibuat ?? this.tglDibuat,
          jamDibuat: jamDibuat ?? this.jamDibuat);

  static TemplateProyekModel fromJson(Map<String, Object?> json) =>
      TemplateProyekModel(
          idTemplate: json[TemplateProyekFields.idTemplate] as int?,
          namaProyek: json[TemplateProyekFields.namaProyek] as String,
          deskripsi: json[TemplateProyekFields.deskripsi] as String,
          jenisProyek: json[TemplateProyekFields.jenisProyek] as String,
          kategoriProyek: json[TemplateProyekFields.kategoriProyek] as String,
          struktur: json[TemplateProyekFields.struktur] as String,
          lantai: json[TemplateProyekFields.lantai] as String,
          dinding: json[TemplateProyekFields.dinding] as String,
          atap: json[TemplateProyekFields.atap] as String,
          jasaKontraktor: json[TemplateProyekFields.jasaKontraktor].toString(),
          pajak: json[TemplateProyekFields.pajak].toString(),
          status: json[TemplateProyekFields.status] as String,
          foto: json[TemplateProyekFields.foto] as String,
          tglDibuat: json[TemplateProyekFields.foto] as String,
          jamDibuat: json[TemplateProyekFields.foto] as String);

  Map<String, Object?> toJson() => {
        TemplateProyekFields.namaProyek: namaProyek,
        TemplateProyekFields.deskripsi: deskripsi,
        TemplateProyekFields.jenisProyek: jenisProyek,
        TemplateProyekFields.kategoriProyek: kategoriProyek,
        TemplateProyekFields.struktur: struktur,
        TemplateProyekFields.lantai: lantai,
        TemplateProyekFields.dinding: dinding,
        TemplateProyekFields.atap: atap,
        TemplateProyekFields.jasaKontraktor: jasaKontraktor,
        TemplateProyekFields.pajak: pajak,
        TemplateProyekFields.status: status,
        TemplateProyekFields.foto: foto,
        TemplateProyekFields.tglDibuat: tglDibuat,
        TemplateProyekFields.jamDibuat: jamDibuat,
      };
}
