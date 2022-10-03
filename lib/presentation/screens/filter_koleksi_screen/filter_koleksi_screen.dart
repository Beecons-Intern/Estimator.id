import 'package:flutter/material.dart';
import 'components/body.dart';
import '../../widgets/widgets.dart';
import '../../../../utilities/utilities.dart';

class FilterKoleksiScreen extends StatelessWidget {
  const FilterKoleksiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: neutral500,
        ),
        automaticallyImplyLeading: true,
        // elevation: 0.8,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        toolbarHeight: 80,
        title: Text(
          "Filter",
          style: text1(neutral500, bold),
        ),
        centerTitle: true,
      ),
      bottomSheet: Container(
        padding:
            EdgeInsets.symmetric(horizontal: size.width * 0.05, vertical: 10),
        width: size.width,
        height: size.height * 0.1,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
                spreadRadius: 2,
                blurRadius: 2,
                color: Colors.black.withOpacity(0.2),
                offset: const Offset(0, 1)),
          ],
        ),
        child: RoundedButton(
          text: "Pilih Voucher",
          ontap: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Detail Penukaran",
                            style: text2(neutral500, semibold),
                          ),
                          const Divider(
                            thickness: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/icon/koin.png",
                                    width: 14,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "800 Poin",
                                    style: text3(neutral500, medium),
                                  )
                                ],
                              ),
                              Text(
                                "Rp 50.000",
                                style: text3(neutral500, semibold),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Mohon pastikan transaksi yang anda lakukan sudah benar",
                            style: text4(neutral500, regular),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          RoundedButton(
                            ontap: () {},
                            text: "Konfirmasi",
                          )
                        ],
                      ),
                    ));
          },
        ),
      ),
      body: const Body(),
    );
  }
}
