import 'package:estimator_id/presentation/view_model/template_proyek_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../route/route_name.dart';
import '../../../../utilities/utilities.dart';
import 'build_item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final templateProyekViewModel =
        Provider.of<TemplateProyekViewModel>(context);
    List<String> items = ["Lihat", "Gunakan Template"];
    Size size = MediaQuery.of(context).size;
    return GridView(
        padding: EdgeInsets.only(
          top: 20,
          left: size.width * 0.05,
          right: size.width * 0.05,
        ),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.55,
            crossAxisSpacing: 10,
            mainAxisSpacing: 16,
            crossAxisCount: 2),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RouteName.profileProyek,
                  arguments: true);
            },
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                  color: neutral100,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: primary, width: 2),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 2,
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, 1)),
                  ],
                ),
                child: const Center(
                  child: Icon(
                    Icons.add_circle_rounded,
                    color: primary,
                    size: 42,
                  ),
                )),
          ),
          if (templateProyekViewModel.datasTemplateProyek != null &&
              templateProyekViewModel.datasTemplateProyek!.isNotEmpty)
            ...templateProyekViewModel.datasTemplateProyek!
                .map((templateProyek) => BuildItemCard(
                      size: size,
                      items: items,
                      templateProyekModel: templateProyek,
                    ))
                .toList(),
        ]);
  }
}
