import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../view_model/profile_proyek_view_model.dart';
import '../../../../utilities/utilities.dart';
import 'components/body.dart';

class ProfileProyekScreen extends StatelessWidget {
  const ProfileProyekScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final profileProyekViewModel = Provider.of<ProfileProyekViewModel>(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: primary,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: neutral100,
              )),
          title: Text(
            "Profil Proyek",
            style: text1(neutral100, bold),
          ),
          centerTitle: true,
        ),
        body: Body(
          profileProyekViewModel: profileProyekViewModel,
        ));
  }
}
