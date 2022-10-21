class AlatUtamaField {
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
    required this.urut,
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

  static AlatUtamaModel fromJson(Map<String, dynamic> json) => AlatUtamaModel(
        urut: json[AlatUtamaField.urut] as int?,
        idAlat: json[AlatUtamaField.idAlat] as String,
        idWilayah: json[AlatUtamaField.idWilayah] as String,
        namaAlat: json[AlatUtamaField.namaAlat] as String,
        spesifikasi: json[AlatUtamaField.spesifikasi] == null
            ? ""
            : json[AlatUtamaField.spesifikasi].toString(),
        merk: json[AlatUtamaField.merk] == null
            ? ""
            : json[AlatUtamaField.merk].toString(),
        satuan: json[AlatUtamaField.satuan] as String,
        tahun: json[AlatUtamaField.tahun] as String,
        sumber: json[AlatUtamaField.sumber] as String,
        keterangan: json[AlatUtamaField.keterangan] as String,
        utama: json[AlatUtamaField.utama] == null
            ? ""
            : json[AlatUtamaField.utama].toString(),
        tanggalDibuat: json[AlatUtamaField.tanggalDibuat] as String,
        jamDibuat: json[AlatUtamaField.jamDibuat] as String,
        hargaDasar: json[AlatUtamaField.hargaDasar].runtimeType == double
            ? json[AlatUtamaField.hargaDasar] as double
            : double.parse("${json[AlatUtamaField.hargaDasar]}.0"),
      );
}
