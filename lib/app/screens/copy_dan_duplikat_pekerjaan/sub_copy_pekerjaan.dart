import 'package:flutter/material.dart';

import '../../Widget/button.dart';
import '../../Widget/search.dart';
import 'component/card_expanded_tile.dart';

class SubCopyPekerjaan extends StatefulWidget {
  const SubCopyPekerjaan({Key? key, this.isSelected = false}) : super(key: key);

  final bool isSelected;

  @override
  State<SubCopyPekerjaan> createState() => _SubCopyPekerjaanState();
}

class _SubCopyPekerjaanState extends State<SubCopyPekerjaan> {
  int? anggaran;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: const Text(
          "Estimasi Anggaran",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Searching(size: size),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05, vertical: size.height * 0.02),
            child: Row(
              children: [
                Button(
                  size: size,
                  icon: Icons.add_circle,
                  title: "Tambah Kategori",
                ),
                SizedBox(width: size.width * 0.02),
                Button(
                  size: size,
                  icon: Icons.file_upload_outlined,
                  title: "Impor Volume",
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              CardExpandedTile(size: size, isSelected: true),
            ],
          )),
        ],
      ),
    );
  }
}
