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
  int selected = 0;

  // @override
  // void initState() {
  //   selected = items.first;
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primary,
        title: Text(
          "Koleksi",
          style: text1(neutral100, bold),
        ),
        centerTitle: false,
        actions: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  context: context,
                  builder: (context) => Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      child: ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                                setState(() {
                                  selected = index;
                                });
                              },
                              child: Text(
                                items[index],
                                style: text2(
                                    selected == index ? primary : neutral500,
                                    selected == index ? semibold : regular),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => const Divider(
                                thickness: 1,
                              ),
                          itemCount: items.length)));
            },
            child: Container(
              margin: EdgeInsets.only(right: size.width * 0.02),
              child: Row(
                children: [
                  Text(
                    items[selected],
                    style: text3(neutral100, semibold),
                  ),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
          )
          /* Container(
            margin: EdgeInsets.only(right: size.width * 0.05),
            child: const Icon(
              Icons.filter_alt,
              color: neutral100,
            ),
          ), */
        ],
        /* toolbarHeight: 80,
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
        ), */
      ),
      body: Body(pageActive: selected),
    );
  }
}
