import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../utilities/utilities.dart';
import '../../../view_model/koleksi_view_model.dart';
import 'build_list_view.dart';

class BuildPageAlat extends StatefulWidget {
  const BuildPageAlat({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<BuildPageAlat> createState() => _BuildPageAlatState();
}

class _BuildPageAlatState extends State<BuildPageAlat> {
  final List<String> sortings = [
    "Nama",
    "Satuan",
    "Harga",
    "Merk",
    "Spesifikasi",
    "Sumber"
  ];
  final List<String> categories = ["Semua", "SBBJ", "IKK BPS", "Estimator.id"];
  int sortingSelected = 0;
  int categorySelected = 0;
  @override
  Widget build(BuildContext context) {
    final koleksiViewModel =
        Provider.of<KoleksiViewModel>(context, listen: false);
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: widget.size.width * 0.05),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        context: context,
                        builder: (context) => Container(
                            margin: const EdgeInsets.symmetric(vertical: 20),
                            padding: EdgeInsets.symmetric(
                                horizontal: widget.size.width * 0.05),
                            child: ListView.separated(
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                      setState(() {
                                        sortingSelected = index;
                                      });
                                    },
                                    child: Text(
                                      sortings[index],
                                      style: text2(
                                          sortingSelected == index
                                              ? primary
                                              : neutral500,
                                          sortingSelected == index
                                              ? semibold
                                              : regular),
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) =>
                                    const Divider(
                                      thickness: 1,
                                    ),
                                itemCount: sortings.length)));
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: neutral200, width: 1)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.keyboard_double_arrow_down,
                          size: 12,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Urutkan : ${sortings[sortingSelected]}",
                          style: text4(neutral500, medium),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        context: context,
                        builder: (context) => Container(
                            margin: const EdgeInsets.symmetric(vertical: 20),
                            padding: EdgeInsets.symmetric(
                                horizontal: widget.size.width * 0.05),
                            child: ListView.separated(
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                      setState(() {
                                        categorySelected = index;
                                      });
                                    },
                                    child: Text(
                                      categories[index],
                                      style: text2(
                                          categorySelected == index
                                              ? primary
                                              : neutral500,
                                          categorySelected == index
                                              ? semibold
                                              : regular),
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) =>
                                    const Divider(
                                      thickness: 1,
                                    ),
                                itemCount: categories.length)));
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: neutral200, width: 1)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.category_outlined,
                          size: 12,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          categories[categorySelected],
                          style: text4(neutral500, medium),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          BuildListView(
            size: widget.size,
            valueKoleksi: koleksiViewModel.alatUtama != null &&
                    koleksiViewModel.alatUtama!.isNotEmpty
                ? koleksiViewModel.alatUtama!.length
                : 0,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
