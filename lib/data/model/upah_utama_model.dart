class UpahUtamaFields {
  static final List<String> values = [
    urut,
    idUpah,
    idWilayah,
    namaUpah,
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
  static const String idUpah = "id_upah";
  static const String idWilayah = "id_wilayah";
  static const String namaUpah = "nama_upah";
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

class UpahUtamaModel {
  int? urut;
  String idUpah,
      idWilayah,
      namaUpah,
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

  UpahUtamaModel({
    required this.urut,
    required this.idUpah,
    required this.idWilayah,
    required this.namaUpah,
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

  static UpahUtamaModel fromJson(Map<String, Object?> json) => UpahUtamaModel(
        urut: json[UpahUtamaFields.urut] as int?,
        idUpah: json[UpahUtamaFields.idUpah] as String,
        idWilayah: json[UpahUtamaFields.idWilayah] as String,
        namaUpah: json[UpahUtamaFields.namaUpah] as String,
        spesifikasi: json[UpahUtamaFields.spesifikasi] as String,
        merk: json[UpahUtamaFields.merk] as String,
        satuan: json[UpahUtamaFields.satuan] as String,
        tahun: json[UpahUtamaFields.tahun] as String,
        sumber: json[UpahUtamaFields.sumber] as String,
        keterangan: json[UpahUtamaFields.keterangan] as String,
        utama: json[UpahUtamaFields.utama] as String,
        tanggalDibuat: json[UpahUtamaFields.tanggalDibuat] as String,
        jamDibuat: json[UpahUtamaFields.jamDibuat] as String,
        hargaDasar: json[UpahUtamaFields.hargaDasar].runtimeType == double
            ? json[UpahUtamaFields.hargaDasar] as double
            : double.parse("${json[UpahUtamaFields.hargaDasar]}.0"),
      );
}
