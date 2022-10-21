class BahanUtamaField {
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
      jamDibuat,
      hargaDasar;

  BahanUtamaModel({
    required this.urut,
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

  static BahanUtamaModel fromJson(Map<String, dynamic> json) {
    return BahanUtamaModel(
        urut: json[BahanUtamaField.urut] as int?,
        idBahan: json[BahanUtamaField.idBahan] as String,
        idWilayah: json[BahanUtamaField.idWilayah] as String,
        namaBahan: json[BahanUtamaField.namaBahan] as String,
        spesifikasi: json[BahanUtamaField.spesifikasi] == null
            ? ""
            : json[BahanUtamaField.spesifikasi].toString(),
        merk: json[BahanUtamaField.merk] == null
            ? ""
            : json[BahanUtamaField.merk].toString(),
        satuan: json[BahanUtamaField.satuan] as String,
        tahun: json[BahanUtamaField.tahun] as String,
        sumber: json[BahanUtamaField.sumber] as String,
        keterangan: json[BahanUtamaField.keterangan] as String,
        utama: json[BahanUtamaField.utama] == null
            ? ""
            : json[BahanUtamaField.hargaDasar].toString(),
        tanggalDibuat: json[BahanUtamaField.tanggalDibuat] as String,
        jamDibuat: json[BahanUtamaField.jamDibuat] as String,
        hargaDasar: json[BahanUtamaField.hargaDasar] == null
            ? ""
            : json[BahanUtamaField.hargaDasar].toString());
  }
}
