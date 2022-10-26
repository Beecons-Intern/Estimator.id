class AlatUtamaFields {
  static final List<String> values = [
    urut,
    idAlat,
    idWilayah,
    namaAlat,
    spesifikasi,
    merk,
    satuan,
    hargaDasar,
    tahun,
    sumber,
    keterangan,
    utama,
    tanggalDibuat,
    jamDibuat
  ];

  static const String urut = "urut";
  static const String idAlat = " id_alat";
  static const String idWilayah = "id_wilayah";
  static const String namaAlat = "nama_alat";
  static const String spesifikasi = "spesifikasi";
  static const String merk = "merk";
  static const String satuan = "satuan";
  static const String hargaDasar = "harga_dasar";
  static const String tahun = "tahun";
  static const String sumber = "sumber";
  static const String keterangan = "keterangan";
  static const String utama = "utama";
  static const String tanggalDibuat = "tgl_dibuat";
  static const String jamDibuat = "jam_dibuat";
}

class AlatUtamaModel {
  int? urut;
  String idAlat,
      idWilayah,
      namaAlat,
      spesifikasi,
      merk,
      satuan,
      tahun,
      sumber,
      keterangan,
      utama,
      tanggalDibuat,
      jamDibuat;
  double hargaDasar;

  AlatUtamaModel({
    this.urut,
    required this.idAlat,
    required this.idWilayah,
    required this.namaAlat,
    required this.spesifikasi,
    required this.merk,
    required this.satuan,
    required this.tahun,
    required this.sumber,
    required this.keterangan,
    required this.utama,
    required this.tanggalDibuat,
    required this.jamDibuat,
    required this.hargaDasar,
  });

  static AlatUtamaModel fromJson(Map<String, Object?> json) {
    return AlatUtamaModel(
      urut: json[AlatUtamaFields.urut] as int?,
      idAlat: json[AlatUtamaFields.idAlat].toString(),
      idWilayah: json[AlatUtamaFields.idWilayah].toString(),
      namaAlat: json[AlatUtamaFields.namaAlat].toString(),
      spesifikasi: json[AlatUtamaFields.spesifikasi].toString(),
      merk: json[AlatUtamaFields.merk].toString(),
      satuan: json[AlatUtamaFields.satuan].toString(),
      tahun: json[AlatUtamaFields.tahun].toString(),
      sumber: json[AlatUtamaFields.sumber].toString(),
      keterangan: json[AlatUtamaFields.keterangan].toString(),
      utama: json[AlatUtamaFields.utama].toString(),
      tanggalDibuat: json[AlatUtamaFields.tanggalDibuat].toString(),
      jamDibuat: json[AlatUtamaFields.jamDibuat].toString(),
      hargaDasar: json[AlatUtamaFields.hargaDasar].runtimeType == double
          ? json[AlatUtamaFields.hargaDasar] as double
          : double.parse("${json[AlatUtamaFields.hargaDasar]}.0"),
    );
  }
}
