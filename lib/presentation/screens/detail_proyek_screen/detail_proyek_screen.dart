import 'package:flutter/material.dart';
import '../../route/route_name.dart';
import 'components/body.dart';
import '../../widgets/widgets.dart';
import '../../../../utilities/utilities.dart';

class DetailProyekScreen extends StatelessWidget {
  const DetailProyekScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isNew = ModalRoute.of(context)!.settings.arguments as bool;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primary,
        title: Text(
          "Detail Proyek",
          style: text1(neutral100, bold),
        ),
        leading: isNew == false
            ? IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: neutral100,
                ))
            : null,
        centerTitle: true,
      ),
      bottomSheet: isNew == true
          ? Container(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, vertical: 12),
              width: size.width,
              height: size.height * 0.09,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 2,
                      blurRadius: 2,
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(0, 1)),
                ],
              ),
              child: RoundedButton(
                ontap: () {
                  Navigator.pushNamed(context, RouteName.navigation);
                },
                text: "Selesai",
              ),
            )
          : null,
      body: const Body(),
    );
  }
}
