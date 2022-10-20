import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../route/route_name.dart';
import '../../view_model/detail_proyek_view_model.dart';
import 'components/body.dart';
import '../../../../utilities/utilities.dart';

class DetailProyekScreen extends StatelessWidget {
  const DetailProyekScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final detailProyekViewModel = Provider.of<DetailProyekViewModel>(context);
    print(detailProyekViewModel.datasHargaSatuan);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primary,
        title: Text(
          "Detail Proyek",
          style: text1(neutral100, bold),
          overflow: TextOverflow.ellipsis,
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, RouteName.proyek);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: neutral100,
            )),
        centerTitle: true,
      ),
      body: Body(
        detailProyekViewModel: detailProyekViewModel,
      ),
    );
  }
}
