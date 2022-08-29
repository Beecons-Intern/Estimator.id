import 'package:flutter/material.dart';

import '../../utilities/colors.dart';
import 'components/navigation_button.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
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
                          color:
                              index == 0 ? neutral500 : const Color(0xFF969696),
                          size: 34,
                        ),
                        text: "Beranda",
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
                          text: "Proyek"),
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
                            Icons.email_rounded,
                            color: index == 2
                                ? neutral500
                                : const Color(0xFF969696),
                            size: 34,
                          ),
                          text: "Koleksi"),
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
                          text: "Akun")
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
