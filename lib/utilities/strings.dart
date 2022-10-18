import 'package:intl/intl.dart';

final String tglDibuat = DateFormat("y-M-d").format(DateTime.now());
final String jamDibuat = DateFormat.Hms().format(DateTime.now());
final String tahun = DateFormat.y().format(DateTime.now());
const String noPhoto = "no-foto.jpg";
