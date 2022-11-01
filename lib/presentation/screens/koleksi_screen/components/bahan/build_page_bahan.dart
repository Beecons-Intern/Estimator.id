import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '../../../../../utilities/utilities.dart';
import '../../../../route/route_name.dart';
import '../../../../view_model/bahan_utama_view_model.dart';
import '../../../../widgets/widgets.dart';
import 'build_list_view_bahan.dart';
import 'build_list_view_supllier.dart';

class BuildPageBahan extends StatefulWidget {
  const BuildPageBahan(
      {Key? key, required this.size, required this.bahanUtamaViewModel})
      : super(key: key);

  final Size size;
  final BahanUtamaViewModel bahanUtamaViewModel;

  @override
  State<BuildPageBahan> createState() => _BuildPageBahanState();
}

class _BuildPageBahanState extends State<BuildPageBahan> {
  final List<String> sortings = [
    "Bahan",
    "Satuan",
    "Harga Dasar",
    "Merk",
    "Spesifikasi",
    "Sumber"
  ];
  final List<String> categories = ["Semua", "Suplier", "SHBJ", "Estimator.id"];
  int sortingSelected = 0;
  int categorySelected = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Provider.of<BahanUtamaViewModel>(context, listen: false)
          .updateData(0, 10);
      Provider.of<BahanUtamaViewModel>(context, listen: false)
          .updateDataProduk(0, 10);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
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
                                    switch (index) {
                                      case 0:
                                        if (categorySelected != 0) {
                                          widget.bahanUtamaViewModel
                                              .getDatas()
                                              .then((value) async {
                                            await widget.bahanUtamaViewModel
                                                .updateData(0, 10,
                                                    isRestart: true);
                                            setState(() {
                                              categorySelected = index;
                                            });
                                          });
                                        }
                                        break;
                                      case 1:
                                        setState(() {
                                          categorySelected = index;
                                        });
                                        break;
                                      case 2:
                                        if (categorySelected != 2) {
                                          widget.bahanUtamaViewModel
                                              .filterData(1)
                                              .then((value) async {
                                            await widget.bahanUtamaViewModel
                                                .updateData(0, 10,
                                                    isRestart: true);
                                            setState(() {
                                              categorySelected = index;
                                            });
                                          });
                                        }
                                        break;
                                      case 3:
                                        buildShowModal(context);
                                        break;
                                      default:
                                    }
                                    // setState(() {
                                    //   categorySelected = index;
                                    // });
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
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                        "Kategori : ${categories[categorySelected]}",
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
        Expanded(
          child: categorySelected == 1
              ? BuildListViewSupplier(
                  size: widget.size,
                  bahanUtamaViewModel: widget.bahanUtamaViewModel,
                )
              : BuildListViewBahan(
                  size: widget.size,
                  bahanUtamaViewModel: widget.bahanUtamaViewModel,
                ),
        ),
      ],
    );
  }

  Future<dynamic> buildShowModal(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset("assets/icon/upgrade.svg"),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Untuk melihat analisa pekerjaan ini, upgrade akun Anda!",
                    style: text4(neutral500, regular),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RoundedButton(
                      text: "Upgrade Sekarang",
                      ontap: () {
                        Navigator.pushNamed(context, RouteName.paket);
                      })
                ],
              ),
            ));
  }
}