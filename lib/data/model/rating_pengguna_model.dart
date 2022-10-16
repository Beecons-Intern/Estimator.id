class RatingPenggunaFields {
  static final List<String> values = [
    idRating,
    idPengguna,
    rating,
    tanggapan,
    tglDibuat,
    jamDibuat
  ];

  static const String idRating = "id_rating";
  static const String idPengguna = "id_pengguna";
  static const String rating = "rating";
  static const String tanggapan = "tanggapan";
  static const String tglDibuat = "tgl_dibuat";
  static const String jamDibuat = "jam_dibuat";
}

class RatingPenggunaModel {
  int? idRating;
  int idPengguna;
  String rating, tanggapan, tglDibuat, jamDibuat;

  RatingPenggunaModel(
      {this.idRating,
      required this.idPengguna,
      required this.rating,
      required this.tanggapan,
      required this.tglDibuat,
      required this.jamDibuat});

  RatingPenggunaModel copy(
          {int? idRating,
          int? idPengguna,
          String? rating,
          String? tanggapan,
          String? tglDibuat,
          String? jamDibuat}) =>
      RatingPenggunaModel(
          idRating: idRating ?? this.idRating,
          idPengguna: idPengguna ?? this.idPengguna,
          rating: rating ?? this.rating,
          tanggapan: tanggapan ?? this.tanggapan,
          tglDibuat: tglDibuat ?? this.tglDibuat,
          jamDibuat: jamDibuat ?? this.jamDibuat);

  static RatingPenggunaModel fromJson(Map<String, Object?> json) =>
      RatingPenggunaModel(
          idRating: json[RatingPenggunaFields.idRating] as int?,
          idPengguna: json[RatingPenggunaFields.idPengguna] as int,
          rating: json[RatingPenggunaFields.rating] as String,
          tanggapan: json[RatingPenggunaFields.tanggapan] as String,
          tglDibuat: json[RatingPenggunaFields.tglDibuat] as String,
          jamDibuat: json[RatingPenggunaFields.jamDibuat] as String);

  Map<String, Object?> toJson() => {
        RatingPenggunaFields.idPengguna: idPengguna,
        RatingPenggunaFields.rating: rating,
        RatingPenggunaFields.tanggapan: tanggapan,
        RatingPenggunaFields.tglDibuat: tglDibuat,
        RatingPenggunaFields.jamDibuat: jamDibuat
      };

  Map<String, Object?> updateToJson() => {
        RatingPenggunaFields.rating: rating,
        RatingPenggunaFields.tanggapan: tanggapan,
      };
}
