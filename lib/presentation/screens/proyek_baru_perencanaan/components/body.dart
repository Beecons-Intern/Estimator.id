import 'package:flutter/material.dart';
import '../../../route/route_name.dart';
import '../../../../utilities/utilities.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> items = ["Lihat", "Gunakan Template"];
    Size size = MediaQuery.of(context).size;
    return GridView.builder(
        padding: EdgeInsets.only(
          top: 20,
          left: size.width * 0.05,
          right: size.width * 0.05,
        ),
        itemCount: 10,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.55,
            crossAxisSpacing: 10,
            mainAxisSpacing: 16,
            crossAxisCount: 2),
        itemBuilder: (context, index) => index == 0
            ? GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RouteName.profileProyek,
                      arguments: true);
                },
                child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
              )
            : Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                  color: neutral100,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 2,
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, 1)),
                  ],
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/img/house.png",
                          width: size.width,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Rumah Tinggal Sederhana",
                          style: text3(neutral500, bold),
                          textAlign: TextAlign.center,
                        ),
                        const Divider(
                          thickness: 1,
                          color: neutral200,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Jenis",
                              style: text4(neutral300, regular),
                            ),
                            Expanded(
                              child: Text(
                                "Rumah",
                                style: text4(neutral500, semibold),
                                textAlign: TextAlign.right,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Kategori",
                              style: text4(neutral300, regular),
                            ),
                            Expanded(
                              child: Text(
                                "1 Lantai",
                                style: text4(neutral500, semibold),
                                textAlign: TextAlign.right,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Struktur",
                              style: text4(neutral300, regular),
                            ),
                            Expanded(
                              child: Text(
                                "Beton Bertulang",
                                style: text4(neutral500, semibold),
                                textAlign: TextAlign.right,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Lantai",
                              style: text4(neutral300, regular),
                            ),
                            Expanded(
                              child: Text(
                                "Keramik",
                                style: text4(neutral500, semibold),
                                textAlign: TextAlign.right,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Dinding",
                              style: text4(neutral300, regular),
                            ),
                            Expanded(
                              child: Text(
                                "Bata Merah",
                                style: text4(neutral500, semibold),
                                textAlign: TextAlign.right,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Atap",
                              style: text4(neutral300, regular),
                            ),
                            Expanded(
                              child: Text(
                                "Genteng",
                                style: text4(neutral500, semibold),
                                textAlign: TextAlign.right,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      top: 3,
                      right: 3,
                      child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10))),
                              context: context,
                              builder: (context) => Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.05),
                                  child: ListView.separated(
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: GestureDetector(
                                            onTap: () {
                                              switch (index) {
                                                case 0:
                                                  Navigator.pushNamed(context,
                                                      RouteName.detailProyek);
                                                  break;
                                                case 1:
                                                  Navigator.pushNamed(context,
                                                      RouteName.detailProyek);
                                                  break;
                                                default:
                                              }
                                            },
                                            child: Text(
                                              items[index],
                                              style: text2(neutral500, regular),
                                            ),
                                          ),
                                        );
                                      },
                                      separatorBuilder: (context, index) =>
                                          const Divider(
                                            thickness: 1,
                                          ),
                                      itemCount: items.length)));
                        },
                        child: const CircleAvatar(
                          backgroundColor: neutral100,
                          radius: 14,
                          child: Icon(
                            Icons.more_vert_rounded,
                            color: primary,
                            size: 18,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ));
  }
}
