import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../route/route_name.dart';
import '../../view_model/template_proyek_view_model.dart';
import 'components/body.dart';
import '../../widgets/widgets.dart';
import '../../../../utilities/utilities.dart';

class DetailProyekScreen extends StatelessWidget {
  const DetailProyekScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isTemplate = ModalRoute.of(context)!.settings.arguments as bool;
    Size size = MediaQuery.of(context).size;
    final templateProyekViewModel =
        Provider.of<TemplateProyekViewModel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primary,
        title: Text(
          isTemplate == true ? "Detail Template Proyek" : "Detail Proyek",
          style: text1(neutral100, bold),
          overflow: TextOverflow.ellipsis,
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: neutral100,
            )),
        centerTitle: true,
      ),
      bottomSheet: isTemplate == true
          ? Container(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, vertical: size.height * 0.015),
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
                  Navigator.pushNamed(context, RouteName.profileProyek,
                      arguments: true);
                },
                text: "Gunakan Template",
              ),
            )
          : null,
      body: Body(
        isTemplate: isTemplate,
      ),
    );
  }
}
