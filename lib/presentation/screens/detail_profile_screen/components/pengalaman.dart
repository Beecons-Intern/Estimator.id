import 'package:flutter/material.dart';
import '../../../../utilities/utilities.dart';

class Pengalaman extends StatelessWidget {
  const Pengalaman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: GridView.builder(
          padding: EdgeInsets.only(
            top: 5,
            left: size.width * 0.05,
            right: size.width * 0.05,
          ),
          itemCount: 10,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10, mainAxisSpacing: 16, crossAxisCount: 2),
          itemBuilder: (context, index) => index == 0
              ? GestureDetector(
                  onTap: () {},
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                        color: neutral100,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/img/house.png",
                        width: size.width,
                        fit: BoxFit.fill,
                      ),
                      Text(
                        "2022, Estimator",
                        style: text3(neutral500, bold),
                      ),
                      Text(
                        "Pembangunan perumahan",
                        style: text4(neutral500, medium),
                      )
                    ],
                  ),
                )),
    );
  }
}