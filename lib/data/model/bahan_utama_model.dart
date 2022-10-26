class BahanUtamaFields {
  static final List<String> values = [
    urut,
    idBahan,
    idWilayah,
    namaBahan,
    spesifikasi,
    merk,
    satuan,
    hargaDasar,
    tahun,
    sumber,
    keterangan,
    utama,
    tanggalDibuat,
    jamDibuat,
  ];

  static const String urut = "urut";
  static const String idBahan = "id_bahan";
  static const String idWilayah = "id_wilayah";
  static const String namaBahan = "nama_bahan";
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

class BahanUtamaModel {
  int? urut;
  String idBahan,
      idWilayah,
      namaBahan,
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

  BahanUtamaModel({
    this.urut,
    required this.idBahan,
    required this.idWilayah,
    required this.namaBahan,
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

  static BahanUtamaModel fromJson(Map<String, Object?> json) {
    return BahanUtamaModel(
        urut: json[BahanUtamaFields.urut] as int?,
        idBahan: json[BahanUtamaFields.idBahan].toString(),
        idWilayah: json[BahanUtamaFields.idWilayah].toString(),
        namaBahan: json[BahanUtamaFields.namaBahan].toString(),
        spesifikasi: json[BahanUtamaFields.spesifikasi].toString(),
        merk: json[BahanUtamaFields.merk].toString(),
        satuan: json[BahanUtamaFields.satuan].toString(),
        tahun: json[BahanUtamaFields.tahun].toString(),
        sumber: json[BahanUtamaFields.sumber].toString(),
        keterangan: json[BahanUtamaFields.keterangan].toString(),
        utama: json[BahanUtamaFields.utama].toString(),
        tanggalDibuat: json[BahanUtamaFields.tanggalDibuat].toString(),
        jamDibuat: json[BahanUtamaFields.jamDibuat].toString(),
        hargaDasar: json[BahanUtamaFields.hargaDasar].runtimeType == double
            ? json[BahanUtamaFields.hargaDasar] as double
            : double.parse("${json[BahanUtamaFields.hargaDasar] ?? '0'}.0"));
  }
}
