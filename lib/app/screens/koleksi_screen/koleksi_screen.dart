import 'package:flutter/material.dart';

import '../../utilities/colors.dart';
import '../../utilities/text_styles.dart';
import 'components/body.dart';

class KoleksiScreen extends StatefulWidget {
  const KoleksiScreen({Key? key}) : super(key: key);

  @override
  State<KoleksiScreen> createState() => _KoleksiScreenState();
}

class _KoleksiScreenState extends State<KoleksiScreen> {
  final items = ["AHS", "Bahan", "Upah", "Alat"];
  String? selected;
  final controller = PageController(initialPage: 0);

  @override
  void initState() {
    selected = items.first;
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        // elevation: 0.8,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        toolbarHeight: 80,
        title: Stack(
          children: [
            const Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.filter_alt,
                color: primary,
              ),
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    "Koleksi",
                    style: text1(neutral500, bold),
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                      alignment: AlignmentDirectional.center,
                      iconEnabledColor: primary,
                      isDense: true,
                      style: text3(neutral500, medium),
                      value: selected,
                      items: items
                          .map((item) => DropdownMenuItem(
                              onTap: () {
                                controller.animateToPage(items.indexOf(item),
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeInOutSine);
                              },
                              value: item,
                              child: Text(
                                item,
                                style: text3(neutral500, regular),
                              )))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          if (value is String) {
                            selected = value;
                          }
                        });
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Body(controller: controller),
    );
  }
}
