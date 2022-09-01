import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import 'build_kategori_proyek.dart';
import 'build_month.dart';
import 'build_price.dart';
import 'build_total_jenis_proyek.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height * 0.05,
            decoration: const BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16))),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                width: size.width,
                height: 55,
                decoration: BoxDecoration(
                    color: neutral100,
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 2,
                          color: const Color(0xFFE6E6E6).withOpacity(0.8),
                          offset: const Offset(0, 1)),
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: const [
                    BuildItemPrice(
                      title: "Biaya Teralokasi",
                      icon: Icons.data_exploration,
                      color: Color(0xFF1A4E90),
                      index: 0,
                    ),
                    BuildItemPrice(
                      title: "Kenaikan",
                      icon: Icons.arrow_upward_rounded,
                      color: primary,
                      index: 1,
                    ),
                    BuildItemPrice(
                      title: "Kerugian",
                      icon: Icons.arrow_downward_rounded,
                      color: accentOrange500,
                      index: 1,
                    ),
                    BuildItemPrice(
                      title: "Daily P&L",
                      icon: Icons.call_missed_outgoing_sharp,
                      color: accentOrange500,
                      index: 1,
                    ),
                    BuildItemPrice(
                      title: "Cash",
                      icon: Icons.attach_money_rounded,
                      color: primary,
                      index: 1,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Text(
                  "Kategori Proyek",
                  style: text2(neutral500, semibold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 55,
                width: size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    BuildKategoriProyek(
                      text: "Rumah Tinggal",
                      total: "120 Proyek",
                      initialIndex: 0,
                      size: size,
                    ),
                    BuildKategoriProyek(
                      text: "Rumah Tinggal",
                      total: "120 Proyek",
                      size: size,
                    ),
                    BuildKategoriProyek(
                      text: "Rumah Tinggal",
                      total: "120 Proyek",
                      size: size,
                    ),
                    BuildKategoriProyek(
                      text: "Rumah Tinggal",
                      total: "120 Proyek",
                      size: size,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Text(
                  "Total Jenis Proyek",
                  style: text2(neutral500, semibold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Row(
                  children: const [
                    BuildTotalJenisProyek(
                      text: "Perancangan",
                      total: "120 Proyek",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    BuildTotalJenisProyek(
                      text: "Penawaran",
                      total: "120 Proyek",
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: size.width,
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin:
                            EdgeInsets.only(left: size.width * 0.05, right: 10),
                        child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            child: Image.asset("assets/img/banner.jpg")),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            child: Image.asset("assets/img/banner.jpg")),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            child: Image.asset("assets/img/banner.jpg")),
                      )
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Text(
                  "Statistik Proyek",
                  style: text2(neutral500, semibold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: size.width,
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    BuildItemMonth(
                      text: "Januari",
                      initialIndex: 0,
                      size: size,
                    ),
                    BuildItemMonth(
                      text: "Februari",
                      size: size,
                    ),
                    BuildItemMonth(
                      text: "Maret",
                      size: size,
                    ),
                    BuildItemMonth(
                      text: "April",
                      size: size,
                    ),
                    BuildItemMonth(
                      text: "Mei",
                      size: size,
                    ),
                    BuildItemMonth(
                      text: "Juni",
                      size: size,
                    ),
                    BuildItemMonth(
                      text: "July",
                      size: size,
                    ),
                    BuildItemMonth(
                      text: "Agustus",
                      size: size,
                    ),
                    BuildItemMonth(
                      text: "September",
                      size: size,
                    ),
                    BuildItemMonth(
                      text: "Oktober",
                      size: size,
                    ),
                    BuildItemMonth(
                      text: "November",
                      size: size,
                    ),
                    BuildItemMonth(
                      text: "Desember",
                      size: size,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: size.width,
                height: 200,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                decoration: BoxDecoration(
                    color: neutral100,
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0, 1)),
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: LineChart(mainData()),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff68737d),
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 2:
        text = const Text('1', style: style);
        break;
      case 5:
        text = const Text('2', style: style);
        break;
      case 8:
        text = const Text('3', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 8.0,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff67727d),
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '10K';
        break;
      case 3:
        text = '30k';
        break;
      case 5:
        text = '50k';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: primary500,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
          show: false,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 5),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          color: const Color(0xFFFFC266),
          /* gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ), */
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                const Color(0xFFFFC266).withOpacity(0.2),
                const Color(0xFFFFC266).withOpacity(0.0)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ],
    );
  }
}
