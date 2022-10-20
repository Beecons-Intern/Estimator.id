import 'package:intl/intl.dart';

final String tglDibuat = DateFormat("y-M-d").format(DateTime.now());
final String jamDibuat = DateFormat.Hms().format(DateTime.now());
final String tahun = DateFormat.y().format(DateTime.now());
const String noPhoto = "no-foto.jpg";
const String proyekPerencanaan = "1";
const String status = "1";
const String wilayahSleman = "3404";
const String posisiPemilikProyek = "1";
const String posisiEstimator = "2";
const String posisiAdminProyek = "4";
final String timeStamp = (DateTime.now().millisecondsSinceEpoch).toString();
