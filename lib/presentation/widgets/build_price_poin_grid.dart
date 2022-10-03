import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';

class BuildPricePoinGrid extends StatefulWidget {
  const BuildPricePoinGrid({
    Key? key,
  }) : super(key: key);

  @override
  State<BuildPricePoinGrid> createState() => _BuildPricePoinGridState();
}

class _BuildPricePoinGridState extends State<BuildPricePoinGrid> {
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width,
        child: GridView.builder(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05, vertical: 10),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 2.3),
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: neutral100,
                      border: selectedIndex != null && selectedIndex == index
                          ? Border.all(color: primary, width: 2)
                          : null,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 2,
                            color: const Color(0xFFE6E6E6).withOpacity(0.8),
                            offset: const Offset(0, 1)),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/icon/koin.png",
                          width: 36,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Rp 50.000", style: text2(neutral500, bold)),
                            Text(
                              "800 Poin",
                              style: text3(neutral500, semibold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )));
  }
}
