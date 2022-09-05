import 'package:estimator_id/app/utilities/text_styles.dart';
import 'package:flutter/material.dart';
import 'app/utilities/colors.dart';
import 'app/widgets/build_textfields.dart';
import 'app/widgets/rounded_button.dart';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              Center(
                child: Image.asset(
                  "assets/icon/email.png",
                  width: 180,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Masukkan email aktifmu",
                style: text1(neutral500, semibold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Silakan masukkan Email aktif yang Anda gunakan. Link reset password akan dikirimkan melalui email.",
                style: text3(neutral500, regular),
              ),
              const SizedBox(
                height: 20,
              ),
              const BuildTextField(
                hint: "example@gmail.com",
              ),
              const SizedBox(
                height: 80,
              ),
              RoundedButton(
                text: "Kirim",
                ontap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
