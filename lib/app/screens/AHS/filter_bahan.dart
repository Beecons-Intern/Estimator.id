import 'package:estimator_id/app/utilities/colors.dart';
import 'package:flutter/material.dart';

import 'Component/item_menu_list.dart';

class FilterBahan extends StatefulWidget {
  const FilterBahan({Key? key}) : super(key: key);

  @override
  State<FilterBahan> createState() => _FilterBahanState();
}

class _FilterBahanState extends State<FilterBahan> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List itemList = [
      // [title, isSelected]
      ["Proyek Terkini", false],
      ["Suplier", true],
      ["SHBJ", false],
      ["IKK BPS", false],
      ["Survei", false],
    ];

    void menuTypeSelected(int index) {
      setState(() {
        //untuk select button
        for (int i = 0; i < itemList.length; i++) {
          itemList[i][1] = false;
        }
        itemList[index][1] = true;
      });
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primary800,
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text(
          "Filter Material",
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Column(
        children: [
          /// search dan filter
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05, vertical: size.height * 0.02),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 20, top: 5, right: 5, bottom: 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: primary800),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "ketik nama bahan",
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),

                /// icon filter
                const SizedBox(width: 10),
                const Icon(
                  Icons.tune,
                  color: primary800,
                )
              ],
            ),
          ),

          ///schrolling supplier, sbhj, estimator dan lain lain
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: itemList.length,
              itemBuilder: (context, index) {
                return ItemMenuList(
                    title: itemList[index][0],
                    isSelected: itemList[index][1],
                    onTap: () {
                      menuTypeSelected(index);
                    });
              },
            ),
          ),

          /// grid view
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 4, mainAxisSpacing: 8),
                //  /// image grid view
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: NetworkImage("https://picsum.photos/200/300",
                          scale: 2.0),
                      fit: BoxFit.cover,
                    ),
                  ),

                  /// detail gridview
                  child: Container(
                    margin: const EdgeInsets.only(top: 87),
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: primary400,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "LED-P-HPB-E40-70W-5700\nK-70D-CT",
                          style: TextStyle(fontSize: 12),
                        ),
                        const SizedBox(height: 5),
                        RichText(
                            text: const TextSpan(
                          text: 'Rp. 913.400.00',
                          style: TextStyle(color: Colors.red, fontSize: 12),
                          children: [
                            TextSpan(
                                text: " /buah",
                                style: TextStyle(color: neutral300)),
                          ],
                        )),
                        const Text(
                          "apple",
                          style: TextStyle(fontSize: 12),
                        ),
                        Row(
                          children: const [
                            Icon(Icons.location_on_rounded,
                                size: 15, color: primary800),
                            SizedBox(width: 5),
                            Text(
                              "Kab. Aceh Selatan",
                              style: TextStyle(fontSize: 12, color: primary800),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
