import 'ahs_utama_model.dart';

class PekerjaanUtamaFields {
  static final List<String> values = [
    urut,
    idKategoriPekerjaan,
    namaKategoriPekerjaan,
    idPekerjaan,
    namaPekerjaan,
    satuan,
    sumber,
    keterangan
  ];

  static const String urut = "urut";
  static const String idKategoriPekerjaan = "id_kategori_pekerjaan";
  static const String namaKategoriPekerjaan = "nama_kategori_pekerjaan";
  static const String idPekerjaan = "id_pekerjaan";
  static const String namaPekerjaan = "nama_pekerjaan";
  static const String satuan = "satuan";
  static const String sumber = "sumber";
  static const String keterangan = "keterangan";
}

class PekerjaanUtamaModel {
  int? urut;
  String idKategoriPekerjaan,
      namaKategoriPekerjaan,
      idPekerjaan,
      namaPekerjaan,
      satuan,
      sumber,
      keterangan;

  PekerjaanUtamaModel(
      {this.urut,
      required this.idKategoriPekerjaan,
      required this.namaKategoriPekerjaan,
      required this.idPekerjaan,
      required this.namaPekerjaan,
      required this.satuan,
      required this.sumber,
      required this.keterangan});

  static PekerjaanUtamaModel fromJson(
          Map<String, Object?> json) =>
      PekerjaanUtamaModel(
          urut: json[PekerjaanUtamaFields.urut] as int?,
          idKategoriPekerjaan:
              json[PekerjaanUtamaFields.idKategoriPekerjaan] as String,
          namaKategoriPekerjaan:
              json[PekerjaanUtamaFields.namaKategoriPekerjaan] as String,
          idPekerjaan: json[PekerjaanUtamaFields.idPekerjaan] as String,
          namaPekerjaan: json[PekerjaanUtamaFields.namaPekerjaan] as String,
          satuan: json[PekerjaanUtamaFields.satuan] as String,
          sumber: json[PekerjaanUtamaFields.sumber] as String,
          keterangan: json[PekerjaanUtamaFields.keterangan] as String);
}
