import 'package:estimator_id/app/screens/AHS/Component/card_rincian_AHS.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utilities/colors.dart';
import '../../utilities/colors.dart';

class rincianAHS extends StatefulWidget {
  const rincianAHS({Key? key, this.isSelected = false}) : super(key: key);

  final bool isSelected;
  @override
  State<rincianAHS> createState() => _rincianAHSState();
}

class _rincianAHSState extends State<rincianAHS> {
  int? anggaran;

  List data = ["A. Bahan", "B. Upah", "C. Alat"];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFECECEC),
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
        ),
        title: Text(
          "Rincian AHS",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 28,
            width: size.width,
            color: Color(0xFF089E14),
            child: Center(
              child: Text(
                "Beton balok bordes 20/40",
                style: TextStyle(fontSize: 12, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 350,
                    height: 50,
                    child: TextField(
                      onTap: () {},
                      decoration: InputDecoration(
                        hintText: 'Masukkan kata kunci',
                        hintStyle: TextStyle(color: Colors.grey),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.search_outlined,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: primary,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: primary,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Harga Satuan'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width * 0.75,
                      height: 50,
                      color: Color(0xFFCEECD0),
                      child: Center(
                        child: Text(
                          'Rp 4.420.206,65',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.20,
                      height: 50,
                      child: Icon(
                        Icons.edit_note_outlined,
                        color: primary,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) => Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(data[index]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.add_circle_outline,
                                    size: 20,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    if (anggaran == null) {
                                      setState(() {
                                        anggaran = index;
                                      });
                                    } else if (anggaran != null &&
                                        anggaran == index) {
                                      setState(() {
                                        anggaran = null;
                                      });
                                    }
                                  },
                                  child: Icon(
                                    anggaran != null && anggaran == index
                                        ? Icons.arrow_drop_down
                                        : Icons.arrow_drop_up,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                          indent: 2,
                          color: Color(0xFFB1B1B1),
                        ),
                        if (anggaran != null && anggaran == index) ...[
                          CardAHS(
                            size: size,
                          ),
                        ]
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
