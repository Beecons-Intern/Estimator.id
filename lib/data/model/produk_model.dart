class ProdukFields {
  static final List<String> values = [
    idProduk,
    idBahan,
    idPengguna,
    idSubKategori,
    namaProduk,
    deskripsi,
    spesifikasi,
    dimensi,
    berat,
    daya,
    kualitas,
    warna,
    material,
    penggunaan,
    merk,
    satuan,
    hargaDasar,
    minOrder,
    freeOngkir,
    garansi,
    status,
    paket,
    tglBerlakuPaket,
    foto,
    tags,
    tglDibuat,
    jamDibuat,
    urut,
    dilihat
  ];

  static const String idProduk = "id_produk";
  static const String idBahan = "id_bahan";
  static const String idPengguna = "id_pengguna";
  static const String idSubKategori = "id_sub_kategori";
  static const String namaProduk = "nama_produk";
  static const String deskripsi = "deskripsi";
  static const String spesifikasi = "spesifikasi";
  static const String dimensi = "dimensi";
  static const String berat = "berat";
  static const String daya = "daya";
  static const String kualitas = "kualitas";
  static const String warna = "warna";
  static const String material = "material";
  static const String penggunaan = "penggunaan";
  static const String merk = "merk";
  static const String satuan = "satuan";
  static const String hargaDasar = "harga_dasar";
  static const String minOrder = "min_order";
  static const String freeOngkir = "free_ongkir";
  static const String garansi = "garansi";
  static const String status = "status";
  static const String paket = "paket";
  static const String tglBerlakuPaket = "tgl_berlaku_paket";
  static const String foto = "foto";
  static const String tags = "tags";
  static const String tglDibuat = "tgl_dibuat";
  static const String tglUpdate = "tgl_update";
  static const String jamDibuat = "jam_dibuat";
  static const String urut = "urut";
  static const String dilihat = "dilihat";
}

class ProdukModel {
  int? idProduk;
  int idPengguna, idSubKategori, urut, dilihat;
  double hargaDasar, minOrder;
  String idBahan,
      namaProduk,
      deskripsi,
      spesifikasi,
      dimensi,
      berat,
      daya,
      kualitas,
      warna,
      material,
      penggunaan,
      merk,
      satuan,
      freeOngkir,
      garansi,
      status,
      paket,
      tglBerlakuPaket,
      foto,
      tags,
      tglDibuat,
      tglUpdate,
      jamDibuat;

  ProdukModel(
      {this.idProduk,
      required this.idBahan,
      required this.idPengguna,
      required this.idSubKategori,
      required this.namaProduk,
      required this.deskripsi,
      required this.spesifikasi,
      required this.dimensi,
      required this.berat,
      required this.daya,
      required this.kualitas,
      required this.warna,
      required this.material,
      required this.penggunaan,
      required this.merk,
      required this.satuan,
      required this.hargaDasar,
      required this.minOrder,
      required this.freeOngkir,
      required this.garansi,
      required this.status,
      required this.paket,
      required this.tglBerlakuPaket,
      required this.foto,
      required this.tags,
      required this.tglDibuat,
      required this.tglUpdate,
      required this.jamDibuat,
      required this.urut,
      required this.dilihat});

  static ProdukModel fromJson(Map<String, Object?> json) => ProdukModel(
      idProduk: json[ProdukFields.idProduk] as int?,
      idBahan: json[ProdukFields.idBahan].toString(),
      idPengguna: json[ProdukFields.idPengguna] as int,
      idSubKategori: json[ProdukFields.idSubKategori] as int,
      namaProduk: json[ProdukFields.namaProduk].toString(),
      deskripsi: json[ProdukFields.deskripsi].toString(),
      spesifikasi: json[ProdukFields.spesifikasi].toString(),
      dimensi: json[ProdukFields.dimensi].toString(),
      berat: json[ProdukFields.berat].toString(),
      daya: json[ProdukFields.daya].toString(),
      kualitas: json[ProdukFields.kualitas].toString(),
      warna: json[ProdukFields.warna].toString(),
      material: json[ProdukFields.material].toString(),
      penggunaan: json[ProdukFields.penggunaan].toString(),
      merk: json[ProdukFields.merk].toString(),
      satuan: json[ProdukFields.satuan].toString(),
      hargaDasar: json[ProdukFields.hargaDasar].runtimeType == double
          ? json[ProdukFields.hargaDasar] as double
          : double.parse("${json[ProdukFields.hargaDasar].toString()}.0"),
      minOrder: json[ProdukFields.minOrder].runtimeType == double
          ? json[ProdukFields.minOrder] as double
          : double.parse("${json[ProdukFields.minOrder].toString()}.0"),
      freeOngkir: json[ProdukFields.freeOngkir].toString(),
      garansi: json[ProdukFields.garansi].toString(),
      status: json[ProdukFields.status].toString(),
      paket: json[ProdukFields.paket].toString(),
      tglBerlakuPaket: json[ProdukFields.tglBerlakuPaket].toString(),
      foto: json[ProdukFields.foto].toString(),
      tags: json[ProdukFields.tags].toString(),
      tglDibuat: json[ProdukFields.tglDibuat].toString(),
      tglUpdate: json[ProdukFields.tglUpdate].toString(),
      jamDibuat: json[ProdukFields.jamDibuat].toString(),
      urut: json[ProdukFields.urut] as int,
      dilihat: json[ProdukFields.dilihat] as int);
}
