class ProyekFields {
  static final List<String> values = [
    idProyek,
    idPengguna,
    namaProyek,
    idWilayah,
    pemilik,
    tahun,
    jasaKontraktor,
    pajak,
    keteranganLain,
    status,
    kategoriProyek,
    foto,
    tglDibuat,
    jamDibuat,
  ];

  static const String idProyek = "id_proyek";
  static const String idPengguna = "id_pengguna";
  static const String namaProyek = "nama_proyek";
  static const String idWilayah = "id_wilayah";
  static const String pemilik = "pemilik";
  static const String tahun = "tahun";
  static const String jasaKontraktor = "jasa_kontraktor";
  static const String pajak = "pajak";
  static const String keteranganLain = "keterangan_lain";
  static const String status = "status";
  static const String kategoriProyek = "kategori_proyek";
  static const String foto = "foto";
  static const String tglDibuat = "tgl_dibuat";
  static const String jamDibuat = "jam_dibuat";
}

class ProyekModel {
  int? idProyek;
  int idPengguna;
  double jasaKontraktor, pajak;
  String namaProyek,
      idWilayah,
      pemilik,
      tahun,
      keteranganLain,
      status,
      kategoriProyek,
      foto,
      tglDibuat,
      jamDibuat;

  ProyekModel(
      {this.idProyek,
      required this.idPengguna,
      required this.namaProyek,
      required this.idWilayah,
      required this.pemilik,
      required this.tahun,
      required this.jasaKontraktor,
      required this.pajak,
      required this.keteranganLain,
      required this.status,
      required this.kategoriProyek,
      required this.foto,
      required this.tglDibuat,
      required this.jamDibuat});

  ProyekModel copy(
          {int? idProyek,
          int? idPengguna,
          String? namaProyek,
          String? idWilayah,
          String? pemilik,
          String? tahun,
          double? jasaKontraktor,
          double? pajak,
          String? keteranganLain,
          String? status,
          String? kategoriProyek,
          String? foto,
          String? tglDibuat,
          String? jamDibuat}) =>
      ProyekModel(
          idProyek: idProyek ?? this.idProyek,
          idPengguna: idPengguna ?? this.idPengguna,
          namaProyek: namaProyek ?? this.namaProyek,
          idWilayah: idWilayah ?? this.idWilayah,
          pemilik: pemilik ?? this.pemilik,
          tahun: tahun ?? this.tahun,
          jasaKontraktor: jasaKontraktor ?? this.jasaKontraktor,
          pajak: pajak ?? this.pajak,
          keteranganLain: keteranganLain ?? this.keteranganLain,
          status: status ?? this.status,
          kategoriProyek: kategoriProyek ?? this.kategoriProyek,
          foto: foto ?? this.foto,
          tglDibuat: tglDibuat ?? this.tglDibuat,
          jamDibuat: jamDibuat ?? this.jamDibuat);

  static ProyekModel fromJson(Map<String, Object?> json) => ProyekModel(
      idProyek: json[ProyekFields.idProyek] as int?,
      idPengguna: json[ProyekFields.idPengguna] as int,
      namaProyek: json[ProyekFields.namaProyek] as String,
      idWilayah: json[ProyekFields.idWilayah] as String,
      pemilik: json[ProyekFields.pemilik] as String,
      tahun: json[ProyekFields.tahun] as String,
      jasaKontraktor: json[ProyekFields.jasaKontraktor].runtimeType == double
          ? json[ProyekFields.jasaKontraktor] as double
          : double.parse("${json[ProyekFields.jasaKontraktor]}.0"),
      pajak: json[ProyekFields.pajak].runtimeType == double
          ? json[ProyekFields.pajak] as double
          : double.parse("${json[ProyekFields.pajak]}.0"),
      keteranganLain: json[ProyekFields.keteranganLain] as String,
      status: json[ProyekFields.status] as String,
      kategoriProyek: json[ProyekFields.kategoriProyek] as String,
      foto: json[ProyekFields.foto] as String,
      tglDibuat: json[ProyekFields.tglDibuat] as String,
      jamDibuat: json[ProyekFields.jamDibuat] as String);

  Map<String, Object?> toJson() => {
        ProyekFields.idPengguna: idPengguna,
        ProyekFields.namaProyek: namaProyek,
        ProyekFields.idWilayah: idWilayah,
        ProyekFields.pemilik: pemilik,
        ProyekFields.tahun: tahun,
        ProyekFields.jasaKontraktor: jasaKontraktor,
        ProyekFields.pajak: pajak,
        ProyekFields.keteranganLain: keteranganLain,
        ProyekFields.status: status,
        ProyekFields.kategoriProyek: kategoriProyek,
        ProyekFields.foto: foto,
        ProyekFields.tglDibuat: tglDibuat,
        ProyekFields.jamDibuat: jamDibuat,
      };
}
