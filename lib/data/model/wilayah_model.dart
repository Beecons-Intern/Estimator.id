class WilayahFields {
  static final List<String> values = [idWilayah, wilayah, kategori, idProv];

  static const String idWilayah = "id_wilayah";
  static const String wilayah = "wilayah";
  static const String kategori = "kategori";
  static const String idProv = "id_prov";
}

class WilayahModel {
  String idWilayah, wilayah, idProv, kategori;

  WilayahModel(
      {required this.kategori,
      required this.idWilayah,
      required this.wilayah,
      required this.idProv});

  factory WilayahModel.fromJson(Map<String, dynamic> json) {
    return WilayahModel(
      idProv: json[WilayahFields.idProv] as String,
      idWilayah: json[WilayahFields.idWilayah] as String,
      kategori: json[WilayahFields.kategori] as String,
      wilayah: json[WilayahFields.wilayah] as String,
    );
  }
}
