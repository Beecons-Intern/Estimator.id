import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:validators/validators.dart';

import '../../../route/route_name.dart';
import '../../../view_model/auth_view_model.dart';
import '../../../widgets/widgets.dart';
import '../../../../utilities/utilities.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final authViewModel = Provider.of<AuthViewModel>(context, listen: false);
    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            child: SizedBox(
              height: size.height * 0.5,
              width: size.width,
              child: Center(
                child: SvgPicture.asset(
                  "assets/logo/estimator_white.svg",
                  width: size.width * 0.6,
                ),
              ),
            ),
          ),
          DraggableScrollableSheet(
              initialChildSize: 0.5,
              minChildSize: 0.5,
              maxChildSize: 0.8,
              builder: (context, controller) => ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 30,
                        left: size.width * 0.05,
                        right: size.width * 0.05,
                      ),
                      color: neutral100,
                      child: SingleChildScrollView(
                        controller: controller,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Daftar",
                              style: text1(neutral500, semibold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            FormBuilder(
                                key: _formKey,
                                child: Column(
                                  children: [
                                    const BuildTextField(
                                      hint: "Nama",
                                      name: "nama",
                                      keyboardType: TextInputType.name,
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const BuildTextField(
                                      hint: "Email",
                                      name: "email",
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const BuildTextField(
                                      hint: "Password",
                                      isPassword: true,
                                      name: "password",
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const BuildTextField(
                                      hint: "Ulangi Password",
                                      isPassword: true,
                                      name: "passwordConfirmation",
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    RoundedButton(
                                      text: "Daftar",
                                      ontap: () {
                                        _formKey.currentState!.save();
                                        if (_formKey.currentState!
                                                    .value["nama"] !=
                                                null &&
                                            _formKey.currentState!
                                                    .value["nama"] !=
                                                "" &&
                                            _formKey.currentState!
                                                    .value["email"] !=
                                                null &&
                                            _formKey.currentState!
                                                    .value["email"] !=
                                                "" &&
                                            _formKey.currentState!
                                                    .value["password"] !=
                                                null &&
                                            _formKey.currentState!
                                                    .value["password"] !=
                                                "" &&
                                            _formKey.currentState!.value[
                                                    "passwordConfirmation"] !=
                                                null &&
                                            _formKey.currentState!.value[
                                                    "passwordConfirmation"] !=
                                                "") {
                                          if (!isEmail(_formKey
                                              .currentState!.value["email"]
                                              .toString()
                                              .toLowerCase())) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                                    snackbarAlert(size, 2));
                                            return;
                                          }

                                          if (_formKey.currentState!
                                                  .value["password"] !=
                                              _formKey.currentState!.value[
                                                  "passwordConfirmation"]) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                                    snackbarAlert(size, 3));
                                            return;
                                          }

                                          authViewModel.email = _formKey
                                              .currentState!.value["email"];
                                          authViewModel.username = _formKey
                                              .currentState!.value["nama"];
                                          authViewModel.password = _formKey
                                              .currentState!.value["password"];

                                          authViewModel.signUp().then((value) {
                                            if (value != true) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                      snackbarAlert(size, 5));
                                              return;
                                            }

                                            Navigator.pushNamedAndRemoveUntil(
                                                context,
                                                RouteName.navigation,
                                                (route) => false);
                                          });
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                                  snackbarAlert(size, 4));
                                          return;
                                        }
                                      },
                                    ),
                                  ],
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Text(
                                "atau gunakan akun",
                                style: text3(neutral500, regular),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: RoundedContainer(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset("assets/logo/google.svg"),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Google",
                                    style: text2(neutral500, regular),
                                  )
                                ],
                              )),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "sudah punya akun?",
                                  style: text3(neutral500, regular),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacementNamed(
                                        context, RouteName.loginScreen);
                                  },
                                  child: Text(
                                    "Masuk",
                                    style: text3(primary, regular),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )),
        ],
      ),
    );
  }

  SnackBar snackbarAlert(Size size, int condition) {
    late String message;
    late String image;

    switch (condition) {
      case 1:
        message = "Register berhasil!";
        image = "assets/lotie/success_primary.json";
        break;
      case 2:
        message = "Format email salah!";
        image = "assets/lotie/error.json";
        break;
      case 3:
        message = "Password tidak sama!";
        image = "assets/lotie/error.json";
        break;
      case 4:
        message = "Input yang anda masukkan tidak lengkap!";
        image = "assets/lotie/error.json";
        break;
      case 5:
        message = "Email sudah pernah didaftarkan!";
        image = "assets/lotie/error.json";
        break;
      default:
    }

    return SnackBar(
        duration: const Duration(seconds: 2),
        margin: EdgeInsets.only(
            bottom: size.height * 0.5,
            left: size.width * 0.2,
            right: size.width * 0.2),
        backgroundColor: neutral100,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        behavior: SnackBarBehavior.floating,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            LottieBuilder.asset(image, width: 80, height: 80),
            Text(message,
                style: text3(neutral500, regular), textAlign: TextAlign.center),
          ],
        ));
  }
}
