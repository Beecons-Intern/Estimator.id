import 'package:flutter/material.dart';

import '../../../../utilities/utilities.dart';
import 'component/alert_ambil_volume.dart';
import 'component/alert_pengurangan.dart';
import 'component/card_bahan.dart';
import 'component/item_bahan.dart';

class Pages extends StatefulWidget {
  const Pages({
    Key? key,
  }) : super(key: key);

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  final List item = [
    'A. penambahan Bahan',
    'B. Pengurangan Bahan',
  ];

  int? hide;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: primary,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: neutral100,
            )),
        title: Text(
          "Edit Volume",
          style: text1(neutral100, bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ///banner
          Container(
            width: size.width,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            color: accentGreen400,
            child: const Text(
              'Pengukuran & Pemasangan BauwPlank',
              style: TextStyle(
                fontSize: 14,
                color: neutral100,
              ),
            ),
          ),

          ///search
          // Searching(size: size),

          ///edit volume
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: primary100,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10))),
                    child: const Text(
                      '0,00',
                      style: TextStyle(
                        fontSize: 16,
                        color: neutral500,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: size.width * 0.2,
                  padding: const EdgeInsets.all(20),
                  color: neutral100,
                  child: const Icon(
                    Icons.edit_note_outlined,
                    color: primary800,
                  ),
                )
              ],
            ),
          ),

          const SizedBox(
            height: 5,
          ),

          ///penambahan bahan
          Expanded(
              child: ListView.builder(
            itemCount: item.length,
            itemBuilder: (context, index) => ExpansionTile(
              trailing: SizedBox(
                width: size.width * 0.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (hide == null) {
                          setState(() {
                            hide = index;
                          });
                        } else if (hide != null && hide == index) {
                          setState(() {
                            hide = null;
                          });
                        }
                      },
                      child: Icon(
                        hide == index ? Icons.remove_circle : Icons.add_circle,
                        color: hide == index ? Colors.red : neutral500,
                        size: 20,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
              ),

              /// title penambahan bahan
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(item[index]),
                ],
              ),
              expandedAlignment: Alignment.topLeft,
              children: [
                if (hide != null && hide == index) ...[
                  ///card penambahan bahan dan pengurangan bahan
                  if (index % 2 == 0) ...[
                    CardBahan(
                      size: size,
                      icon: Icons.add_circle,
                      titleButton: 'ambil volume',
                      onTap: () => showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            AlertAmbilVolume(size: size),
                      ),
                    )
                  ] else
                    CardBahan(
                      size: size,
                      icon: Icons.remove_circle,
                      titleButton: 'ambil volume',
                      onTap: () => showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            AlertPenguranganBahan(size: size),
                      ),
                    ),
                  const Divider(thickness: 2)
                ],
                ItemBahan(size: size),
                //total volume
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 10, horizontal: size.width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Total Volume",
                        style: TextStyle(
                            fontSize: 16,
                            color: neutral500,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " - m3",
                        style: TextStyle(
                          fontSize: 16,
                          color: neutral500,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),

          ///button edit volume
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: primary900, borderRadius: BorderRadius.circular(5)),
            child: const Text(
              "Selesai",
              style: TextStyle(
                fontSize: 16,
                color: neutral100,
              ),
            ),
          )
        ],
      ),
    );
  }
}
