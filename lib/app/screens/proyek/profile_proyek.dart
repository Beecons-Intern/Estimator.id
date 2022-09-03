import 'package:estimator_id/app/screens/proyek/component/cari_proyek.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'component/List_project.dart';

class ProfileProyek extends StatelessWidget {
  const ProfileProyek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            cari_proyek(),
            ListProjek(height: height),
          ],
        ),
      ),
    );
  }
}
