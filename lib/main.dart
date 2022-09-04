import 'package:estimator_id/app/screens/login_screen/login_screen.dart';
import 'package:estimator_id/app/screens/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';

import 'app/screens/register_screen/register_screen.dart';
import 'app/utilities/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estimator',
      theme: ThemeData(fontFamily: 'Quicksand'),
      home: const RegisterScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primary,
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: size.height,
            maxWidth: size.width,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF089E14), Color(0xFF089E14)],
                begin: Alignment.topLeft,
                end: Alignment.centerRight),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Image.asset("assets/logo/estimator.png")],
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Daftar",
                          style: TextStyle(
                            fontFamily: "QuickSand",
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "masukkan nama",
                            contentPadding: const EdgeInsets.all(10.0),
                            hintStyle: TextStyle(
                                color: Color(0xFF089E14),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: "QuickSand"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                  color: Color(0xFF089E14), width: 5),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(10.0),
                            hintText: 'masukkan email',
                            hintStyle: TextStyle(
                                color: Color(0xFF089E14),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: "QuickSand"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide:
                                  const BorderSide(color: Color(0xFF089E14)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextField(
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(10.0),
                            hintText: 'masukkan password',
                            hintStyle: TextStyle(
                                color: Color(0xFF089E14),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: "QuickSand"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide:
                                  const BorderSide(color: Color(0xFF089E14)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(10.0),
                            /* suffixIcon: cobaPass(), */
                            hintText: 'ulangi password',
                            hintStyle: TextStyle(
                                color: Color(0xFF089E14),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: "QuickSand"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide:
                                  const BorderSide(color: Color(0xFF089E14)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF089E14),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text(
                                "Daftar",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "QuickSand",
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "atau daftar akun",
                                style: TextStyle(
                                    fontFamily: "QuickSand",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w100),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        /* Container(
                          width: double.infinity,
                          child: SignInButton(
                            Buttons.google,
                            text: "Daftar dengan Google",
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: () {},
                          ),
                        ), */
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 70,
                              ),
                              Text(
                                "Sudah punya akun?",
                                style: TextStyle(
                                    fontFamily: "QuickSand",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(padding: const EdgeInsets.all(3.0)),
                              GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: Color(0xFF089E14),
                                        fontFamily: "QuickSand",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
