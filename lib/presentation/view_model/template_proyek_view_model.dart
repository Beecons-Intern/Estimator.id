import 'package:flutter/material.dart';
import '../../data/model/template_proyek_model.dart';
import '../../data/source/template_proyek_source.dart';

class TemplateProyekViewModel extends ChangeNotifier {
  final String status = "1";

  List<TemplateProyekModel>? _datasTemplateProyek;
  List<TemplateProyekModel>? get datasTemplateProyek => _datasTemplateProyek;

  Future getAllDatas() async {
    try {
      await TemplateProyekSource().getDatas(status).then((value) {
        if (value != null) _datasTemplateProyek = value;
      });
      notifyListeners();
    } catch (error) {
      return error;
    }
  }
}
