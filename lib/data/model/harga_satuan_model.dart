class HargaSatuanFields {
  static final List<String> values = [
    idHargaSatuan,
    idProyek,
    idProyek,
    idPelaksana,
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
  static const String idProyek = "id_proyek";
  static const String idPelaksana = "id_pelaksana";
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

class HargaSatuanModel {
  int? idHargaSatuan;
  int idProyek, idPelaksana;
  String idPekerjaan,
      namaPekerjaan,
      satuan,
      idKategori,
      level,
      haveSub,
      totalHarga,
      tempTotalHarga,
      sumber,
      tglDibuat,
      jamDibuat;

  HargaSatuanModel(
      {this.idHargaSatuan,
      required this.idProyek,
      required this.idPelaksana,
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

  HargaSatuanModel copy(
          {int? idHargaSatuan,
          int? idProyek,
          int? idPelaksana,
          String? idPekerjaan,
          String? namaPekerjaan,
          String? satuan,
          String? idKategori,
          String? level,
          String? haveSub,
          String? totalHarga,
          String? tempTotalHarga,
          String? sumber,
          String? tglDibuat,
          String? jamDibuat}) =>
      HargaSatuanModel(
          idHargaSatuan: idHargaSatuan ?? this.idHargaSatuan,
          idProyek: idProyek ?? this.idProyek,
          idPelaksana: idPelaksana ?? this.idPelaksana,
          idPekerjaan: idPekerjaan ?? this.idPekerjaan,
          namaPekerjaan: namaPekerjaan ?? this.namaPekerjaan,
          satuan: satuan ?? this.satuan,
          idKategori: idKategori ?? this.idKategori,
          level: level ?? this.level,
          haveSub: haveSub ?? this.haveSub,
          totalHarga: totalHarga ?? this.totalHarga,
          tempTotalHarga: tempTotalHarga ?? this.tempTotalHarga,
          sumber: sumber ?? this.sumber,
          tglDibuat: tglDibuat ?? this.tglDibuat,
          jamDibuat: jamDibuat ?? this.jamDibuat);

  static HargaSatuanModel fromJson(Map<String, Object?> json) =>
      HargaSatuanModel(
          idHargaSatuan: json[HargaSatuanFields.idHargaSatuan] as int?,
          idProyek: json[HargaSatuanFields.idProyek] as int,
          idPelaksana: json[HargaSatuanFields.idPelaksana] as int,
          idPekerjaan: json[HargaSatuanFields.idPekerjaan] as String,
          namaPekerjaan: json[HargaSatuanFields.namaPekerjaan] as String,
          satuan: json[HargaSatuanFields.satuan] as String,
          idKategori: json[HargaSatuanFields.idKategori] as String,
          level: json[HargaSatuanFields.level] as String,
          haveSub: json[HargaSatuanFields.haveSub] as String,
          totalHarga: json[HargaSatuanFields.totalHarga] as String,
          tempTotalHarga: json[HargaSatuanFields.tempTotalHarga] as String,
          sumber: json[HargaSatuanFields.sumber] as String,
          tglDibuat: json[HargaSatuanFields.tglDibuat] as String,
          jamDibuat: json[HargaSatuanFields.jamDibuat] as String);

  Map<String, Object?> toJson() => {
        HargaSatuanFields.idProyek: idProyek,
        HargaSatuanFields.idPelaksana: idPelaksana,
        HargaSatuanFields.idPekerjaan: idPekerjaan,
        HargaSatuanFields.namaPekerjaan: namaPekerjaan,
        HargaSatuanFields.satuan: satuan,
        HargaSatuanFields.idKategori: idKategori,
        HargaSatuanFields.level: level,
        HargaSatuanFields.haveSub: haveSub,
        HargaSatuanFields.totalHarga: totalHarga,
        HargaSatuanFields.tempTotalHarga: tempTotalHarga,
        HargaSatuanFields.sumber: sumber,
        HargaSatuanFields.tglDibuat: tglDibuat,
        HargaSatuanFields.jamDibuat: jamDibuat,
      };
}
