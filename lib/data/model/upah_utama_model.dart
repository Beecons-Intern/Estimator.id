class UpahUtamaField {
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

  static UpahUtamaModel fromJson(Map<String, dynamic> json) => UpahUtamaModel(
        urut: json[UpahUtamaField.urut] as int?,
        idUpah: json[UpahUtamaField.idUpah] as String,
        idWilayah: json[UpahUtamaField.idWilayah] as String,
        namaUpah: json[UpahUtamaField.namaUpah] as String,
        spesifikasi: json[UpahUtamaField.spesifikasi] as String,
        merk: json[UpahUtamaField.merk] as String,
        satuan: json[UpahUtamaField.satuan] as String,
        tahun: json[UpahUtamaField.tahun] as String,
        sumber: json[UpahUtamaField.sumber] as String,
        keterangan: json[UpahUtamaField.keterangan] as String,
        utama: json[UpahUtamaField.utama] == null
            ? ""
            : json[UpahUtamaField.utama].toString(),
        tanggalDibuat: json[UpahUtamaField.tanggalDibuat],
        jamDibuat: json[UpahUtamaField.jamDibuat] as String,
        hargaDasar: json[UpahUtamaField.hargaDasar].runtimeType == double
            ? json[UpahUtamaField.hargaDasar] as double
            : double.parse("${json[UpahUtamaField.hargaDasar]}.0"),
      );
}
