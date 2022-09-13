<<<<<<< HEAD
import 'package:estimator_id/app/screens/Laporan%20RAB/laporan_rab.dart';
import 'package:estimator_id/app/screens/copy_dan_duplikat_pekerjaan/sub_copy_pekerjaan.dart';

=======
import 'package:estimator_id/app/screens/koleksi_screen/koleksi_screen.dart';
import 'package:estimator_id/app/widgets/rounded_button.dart';
>>>>>>> 96f542c0cd23f460888107f489b528db83b8950d
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'app/utilities/colors.dart';
import 'app/utilities/text_styles.dart';
import 'app/widgets/build_textfields.dart';

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
<<<<<<< HEAD
      home: const LaporanRab(),
    );
  }
}
=======
      home: const EditProfile(),
      // routes: AppPage.pages,
      // initialRoute: '/',
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold();
  }
}

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Profil",
          style: TextStyle(
              fontFamily: "QuickSand",
              fontWeight: FontWeight.w900,
              fontSize: 17,
              color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
          iconSize: 20,
          color: Colors.black,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(2),
        child: ListView(
          children: [
            Center(
              child: Stack(
                children: [
                  ClipOval(
                    child: Image.asset(
                      "assets/logo/person.png",
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0.01,
                    right: 0.04,
                    child: Container(
                      padding: EdgeInsets.all(1.0),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.camera_alt_rounded),
                        iconSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color.fromARGB(255, 88, 87, 87),
                  ),
                ),
                child: TextField(
                  enabled: false,
                  controller: TextEditingController(text: "Dani Kurniawati"),
                  decoration: InputDecoration(
                    labelText: "Nama Lengkap",
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      fontFamily: "QuickSand",
                    ),
                    contentPadding: EdgeInsets.all(6),
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color.fromARGB(255, 88, 87, 87),
                  ),
                ),
                child: TextField(
                  enabled: false,
                  controller:
                      TextEditingController(text: "Seorang estimator bangunan"),
                  decoration: InputDecoration(
                    labelText: "Ringkasan Profil",
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      fontFamily: "QuickSand",
                    ),
                    contentPadding: EdgeInsets.all(6),
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color.fromARGB(255, 88, 87, 87),
                  ),
                ),
                child: TextField(
                  enabled: false,
                  controller: TextEditingController(
                      text: "Jl Prionogo no 20 Sleman, Yogyakarta"),
                  decoration: InputDecoration(
                    labelText: "Alamat",
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      fontFamily: "QuickSand",
                    ),
                    contentPadding: EdgeInsets.all(6),
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color.fromARGB(255, 88, 87, 87),
                  ),
                ),
                child: TextField(
                  enabled: false,
                  controller: TextEditingController(text: "Yogyakarta"),
                  decoration: InputDecoration(
                    labelText: "Wilayah",
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      fontFamily: "QuickSand",
                    ),
                    contentPadding: EdgeInsets.all(6),
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color.fromARGB(255, 88, 87, 87),
                  ),
                ),
                child: TextField(
                  enabled: false,
                  controller:
                      TextEditingController(text: "CV Maju Jaya Hokyaa"),
                  decoration: InputDecoration(
                    labelText: "Perusahaan",
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      fontFamily: "QuickSand",
                    ),
                    contentPadding: EdgeInsets.all(6),
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color.fromARGB(255, 88, 87, 87),
                  ),
                ),
                child: TextField(
                  enabled: false,
                  controller:
                      TextEditingController(text: "Majujayahoki@gmail.com"),
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      fontFamily: "QuickSand",
                    ),
                    contentPadding: EdgeInsets.all(6),
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color.fromARGB(255, 88, 87, 87),
                  ),
                ),
                child: TextField(
                  enabled: false,
                  controller: TextEditingController(text: "08917187262"),
                  decoration: InputDecoration(
                    labelText: "No Telp",
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      fontFamily: "QuickSand",
                    ),
                    contentPadding: EdgeInsets.all(6),
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color.fromARGB(255, 88, 87, 87),
                  ),
                ),
                child: TextField(
                  enabled: false,
                  controller: TextEditingController(text: "Majujayahoki.com"),
                  decoration: InputDecoration(
                    labelText: "Website",
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      fontFamily: "QuickSand",
                    ),
                    contentPadding: EdgeInsets.all(6),
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF089E14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      "Masuk",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "QuickSand",
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      "Batal",
                      style: TextStyle(
                          color: Colors.green,
                          fontFamily: "QuickSand",
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
>>>>>>> 96f542c0cd23f460888107f489b528db83b8950d
