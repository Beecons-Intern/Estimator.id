import 'package:estimator_id/app/screens/koleksi_screen/koleksi_screen.dart';
import 'package:estimator_id/app/widgets/rounded_button.dart';
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
      home: const HomeProfile(),
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
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(padding: EdgeInsets.all(2)),
                    Text(
                      "Nama Lengkap",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Puji Kurniawan",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
                    Text(
                      "Ringkasan Profil",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "-",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
                    Text(
                      "Alamat",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Sleman Yogyakarta",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
                    Text(
                      "Wilayah",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Yogyakarta",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
                    Text(
                      "Perusahaan",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "-",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
                    Text(
                      "Email",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Puji11@gmail.com",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
                    Text(
                      "No Telpon",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "0981916181617",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
                    Text(
                      "Website",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Pujikurniiawan.com",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new),
            iconSize: 20,
            color: Colors.black,
          ),
          centerTitle: true,
          title: Text(
            "Profil Pengguna",
            style: TextStyle(
                fontFamily: "QuickSand",
                fontSize: 17,
                fontWeight: FontWeight.w900,
                color: Colors.black),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage("assets/logo/person.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              Text(
                "Puji Kurniawan",
                style: TextStyle(
                    fontFamily: "QuickSand",
                    fontSize: 14,
                    fontWeight: FontWeight.w900),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
              ),
              Text(
                "Sleman, Yogyakarta",
                style: TextStyle(
                    fontFamily: "QuickSand",
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: TabBar(
                  tabs: [
                    Tab(
                      child: Text(
                        "Informasi Profil",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "QuickSand",
                          fontWeight: FontWeight.w900,
                          fontSize: 10,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Pengalaman Proyek",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "QuickSand",
                            fontSize: 10,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Bidang Kompetensi",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "QuickSand",
                            fontSize: 10,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                    children: [Profile(), Pengalaman(), Kompetensi()]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Pengalaman extends StatelessWidget {
  const Pengalaman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: GridView.count(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
        crossAxisCount: 2,
        children: List.generate(6, (index) {
          return Container(
            padding: EdgeInsets.all(6),
            child: Card(
              color: Colors.white,
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 6,
                    ),
                    Image.asset(
                      "assets/logo/rumah.png",
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "2022, Estimator",
                      style: TextStyle(
                          fontFamily: "QuickSand",
                          fontSize: 12,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Proyek Pembangunan Perumahan",
                      style: TextStyle(
                          fontFamily: "QuickSand",
                          fontSize: 11,
                          fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

class HomeProfile extends StatelessWidget {
  const HomeProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        title: Text(
          "Akun",
          style: text1(neutral100, bold),
        ),
        centerTitle: true,
        backgroundColor: primary,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: neutral100,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.3,
            width: size.width,
            child: Center(
              child: Container(
                width: 150,
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
                      fit: BoxFit.cover,
                      image: AssetImage("assets/img/profil.jpg")),
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05, vertical: 20),
                decoration: const BoxDecoration(
                    color: neutral100,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16))),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: neutral200.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Syalana",
                                          style: text1(primary, bold),
                                        ),
                                        Text(
                                          "Sleman, Yogyakarta",
                                          style: text3(neutral500, regular),
                                        ),
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Row(
                                        children: [
                                          const Icon(
                                              Icons.mode_edit_outline_rounded,
                                              color: primary,
                                              size: 12),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            "Edit Profil",
                                            style: text4(primary, bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                //container Poin
                                Container(
                                  height: 70,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      color: primary,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 50,
                                          width: 50,
                                          child: Image.asset(
                                              "assets/icon/star.png"),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Poin saat ini",
                                                style: TextStyle(
                                                    fontFamily: "QuickSand",
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                              Text(
                                                "2908",
                                                style: TextStyle(
                                                    fontFamily: "QuickSand",
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 25),
                                                child: GestureDetector(
                                                    onTap: () {},
                                                    child: Text(
                                                      "Riwayat Poin",
                                                      style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                          color: Colors.white,
                                                          fontFamily:
                                                              "QuickSand",
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.w800),
                                                    )),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 50,
                                  width: 320,
                                  decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          // crossAxisAlignment:
                                          //     CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Tipe Akun",
                                              style: TextStyle(
                                                  fontFamily: "QuickSand",
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w900,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              "Standard",
                                              style: TextStyle(
                                                  fontFamily: "QuickSand",
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w900,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 30,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(7),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text(
                                              "Upgrade",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "QuickSand",
                                                  fontWeight: FontWeight.w900),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.account_circle_outlined,
                                      color: Color.fromARGB(255, 114, 113, 113),
                                      size: 30,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 10.0)),
                                    Text(
                                      "Profil Pengguna",
                                      style: TextStyle(
                                          fontFamily: "QuickSand",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Icon(Icons.keyboard_arrow_right_outlined)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.file_download_outlined,
                                      color: Color.fromARGB(255, 114, 113, 113),
                                      size: 30,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 10.0)),
                                    Text(
                                      "Pilihan Paket",
                                      style: TextStyle(
                                          fontFamily: "QuickSand",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_right_outlined)
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.message_outlined,
                                      color: Color.fromARGB(255, 114, 113, 113),
                                      size: 30,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 10.0)),
                                    Text(
                                      "Umpan Balik",
                                      style: TextStyle(
                                          fontFamily: "QuickSand",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_right_outlined)
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.warning_amber_outlined,
                                      color: Color.fromARGB(255, 114, 113, 113),
                                      size: 30,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 10.0)),
                                    Text(
                                      "Lapor Kesalahan",
                                      style: TextStyle(
                                          fontFamily: "QuickSand",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_right_outlined)
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.logout_outlined,
                                      color: Color.fromARGB(255, 114, 113, 113),
                                      size: 30,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 10.0)),
                                    Text(
                                      "Log Out",
                                      style: TextStyle(
                                          fontFamily: "QuickSand",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_right_outlined)
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Kompetensi extends StatelessWidget {
  const Kompetensi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Bidang Kompetensi",
              style: TextStyle(
                  fontFamily: "QuickSand",
                  fontSize: 11,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10.0),
                hintStyle: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    fontFamily: "QuickSand"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Harga Jasa",
              style: TextStyle(
                  fontFamily: "QuickSand",
                  fontSize: 11,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 40,
                  child: TextField(
                    // style: TextStyle(height: 22.0),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10.0),
                      hintStyle: TextStyle(
                          color: Color(0xFF089E14),
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          fontFamily: "QuickSand"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                          color: Color(0xFF089E14),
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  "-",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                Container(
                  width: 150,
                  height: 40,
                  child: TextField(
                    // style: TextStyle(height: 22.0),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10.0),
                      hintStyle: TextStyle(
                          color: Color(0xFF089E14),
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          fontFamily: "QuickSand"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                          color: Color(0xFF089E14),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
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
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    "Simpan",
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
            Container(
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
                        color: Color(0xFF089E14),
                        fontFamily: "QuickSand",
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
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

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(padding: EdgeInsets.all(2)),
                    Text(
                      "Nama Lengkap",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Puji Kurniawan",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
                    Text(
                      "Ringkasan Profil",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "-",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
                    Text(
                      "Alamat",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Sleman Yogyakarta",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
                    Text(
                      "Wilayah",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Yogyakarta",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
                    Text(
                      "Perusahaan",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "-",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
                    Text(
                      "Email",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Puji11@gmail.com",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
                    Text(
                      "No Telpon",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "0981916181617",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
                    Text(
                      "Website",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Pujikurniiawan.com",
                      style: TextStyle(
                        fontFamily: "QuickSand",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
