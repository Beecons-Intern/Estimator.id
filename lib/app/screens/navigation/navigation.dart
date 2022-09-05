import 'package:flutter/material.dart';

import '../../utilities/colors.dart';
import '../../utilities/text_styles.dart';
import '../home_screen/home_screen.dart';
import 'components/navigation_button.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  List pages = const [
    HomeScreen(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: pages[index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: primary,
        child: const Icon(
          Icons.rocket_outlined,
          color: neutral100,
          size: 36,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(95, 59, 59, 59),
                spreadRadius: 1,
                blurRadius: 10),
          ],
        ),
        child: BottomAppBar(
          notchMargin: 5.0,
          shape: const CircularNotchedRectangle(),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
            height: 60,
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      NavigationButton(
                        onPressed: () {
                          setState(() {
                            index = 0;
                          });
                        },
                        icon: Icon(
                          Icons.home,
                          color: index == 0 ? primary : const Color(0xFF969696),
                          size: 34,
                        ),
                        text: Text(
                          "Beranda",
                          style: text4(primary, medium),
                        ),
                      ),
                      NavigationButton(
                          onPressed: () {
                            setState(() {
                              index = 1;
                            });
                          },
                          icon: Icon(
                            Icons.grid_view_outlined,
                            color: index == 1
                                ? neutral500
                                : const Color(0xFF969696),
                            size: 34,
                          ),
                          text: Text(
                            "Proyek",
                            style: text4(neutral500, medium),
                          )),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      NavigationButton(
                          onPressed: () {
                            setState(() {
                              index = 2;
                            });
                          },
                          icon: Icon(
                            Icons.email_outlined,
                            color: index == 2
                                ? neutral500
                                : const Color(0xFF969696),
                            size: 34,
                          ),
                          text: Text(
                            "Koleksi",
                            style: text4(neutral500, medium),
                          )),
                      NavigationButton(
                          onPressed: () {
                            setState(() {
                              index = 3;
                            });
                          },
                          icon: Icon(
                            Icons.person_outline_rounded,
                            color: index == 3
                                ? neutral500
                                : const Color(0xFF969696),
                            size: 34,
                          ),
                          text: Text(
                            "Akun",
                            style: text4(neutral500, medium),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
