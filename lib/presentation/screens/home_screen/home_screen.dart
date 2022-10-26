import 'package:flutter/material.dart';
import 'components/body.dart';
import '../../../../utilities/utilities.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primary,
        toolbarHeight: 72,
        title: Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,
                      color: Theme.of(context).scaffoldBackgroundColor),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, 1)),
                  ],
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: const DecorationImage(
                      scale: 0.5,
                      fit: BoxFit.contain,
                      image: AssetImage("assets/img/profil.jpg")),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Welcome to estimator.id 👋",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "Rafi Ramadhana",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
        // leading: Container(
        //   margin: EdgeInsets.only(left: size.width * 0.05),
        //   decoration: BoxDecoration(
        //     border: Border.all(
        //         width: 1, color: Theme.of(context).scaffoldBackgroundColor),
        //     boxShadow: [
        //       BoxShadow(
        //           spreadRadius: 2,
        //           blurRadius: 10,
        //           color: Colors.black.withOpacity(0.1),
        //           offset: const Offset(0, 1)),
        //     ],
        //     shape: BoxShape.circle,
        //     color: Colors.white,
        //     image: const DecorationImage(
        //         scale: 0.5,
        //         fit: BoxFit.contain,
        //         image: AssetImage("assets/img/profil.jpg")),
        //   ),
        // ),
        // title: Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: const [
        //     Text(
        //       "Welcome to estimator.id 👋",
        //       style: TextStyle(fontSize: 14),
        //     ),
        //     Text(
        //       "Rafi Ramadhana",
        //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //     ),
        //   ],
        // ),
      ),
      body: const Body(),
    );
  }
}
