class WilayahModel {
  int kategori;
  String idWilayah, wilayah, idProv, prov;

  WilayahModel(
      {required this.kategori,
      required this.idWilayah,
      required this.wilayah,
      required this.idProv,
      required this.prov});

  factory WilayahModel.fromJson(Map<String, dynamic> json) {
    return WilayahModel(
        idProv: json["id_prov"].toString(),
        idWilayah: json["id_wilayah"].toString(),
        kategori: int.parse(json["id_wilayah"]),
        wilayah: json["wilayah"].toString(),
        prov: "provinsi");
  }
}
